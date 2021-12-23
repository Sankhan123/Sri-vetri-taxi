import axios from "axios";
import React from "react";
import { useState, useMemo, useEffect } from "react";
import { useLocation } from "react-router-dom";
import { useTable } from "react-table";

const CarTable = () => {
  let Location = useLocation();
  const data = Location.state;
  const [Data, setData] = useState([]);
  const getData = async () => {
    const res = await axios.get(`http://127.0.0.1:8000/api/cars-data/${data}`);
    if (res) {
      const data = res.data.daytrip;
      setData(data);
    } else {
      console.log("Error");
    }
  };
  useEffect(() => {
    getData();
  }, []);

  const tableData = useMemo(() => [...Data], [Data]);

  const tableColumns = useMemo(
    () =>
      Data[0]
        ? Object.keys(Data[0])
            .filter((key) => key !== "created_at" && key !== "updated_at")
            .map((key) => {
              return {
                Header: key.charAt(0).toUpperCase() + key.slice(1),
                accessor: key,
                maxWidth: 10,
              };
            })
        : [],
    [Data]
  );
  const { getTableProps, getTableBodyProps, headerGroups, rows, prepareRow } =
    useTable({
      columns: tableColumns,
      data: tableData,
    });
  return (
    <div className="flex-grow-1">
      <table className="table table-striped w-75 m-auto" {...getTableProps()}>
        <thead>
          {headerGroups.map((headerGroup) => (
            <tr {...headerGroup.getHeaderGroupProps()}>
              {headerGroup.headers.map((column) => (
                <th {...column.getHeaderProps()}>{column.render("Header")}</th>
              ))}
            </tr>
          ))}
        </thead>
        <tbody {...getTableBodyProps()}>
          {rows.map((row, i) => {
            prepareRow(row);
            return (
              <tr {...row.getRowProps()}>
                {row.cells.map((cell) => {
                  return (
                    <td {...cell.getCellProps()}>
                      {cell.column.Header === "Id"
                        ? cell.row.index + 1
                        : cell.render("Cell")}
                    </td>
                  );
                })}
              </tr>
            );
          })}
        </tbody>
      </table>
    </div>
  );
};
export default CarTable;
