import axios from 'axios';
import React from 'react'
import { useState,useMemo, useEffect } from 'react';
import { useLocation} from "react-router-dom";
import { useTable } from 'react-table'


function CarTable() {
    let Location = useLocation();
    const data = Location.state;
    const [list, setList] = useState();

    useEffect(()=>{
        async function getData(){
            const res = await axios.get(`http://127.0.0.1:8000/api/cars-data/${data}`);
            if(res){
                console.log(res.data.daytrip)
               
                setList(res.data.daytrip)
                
            }else{
                console.log("Error");
            }
        }
        getData();

    }, [])
    // const COLUMNS = [
    //     {
    //         Header: 'Customer',
    //         accessor: 'id'
    //     },
       
    //     {
    //         Header: 'Id',
    //         accessor: 'id'
    //     },
    //     {
    //         Header: 'Id',
    //         accessor: 'id'
    //     },
    //     {
    //         Header: 'Id',
    //         accessor: 'id'
    //     },
    //     {
    //         Header: 'Id',
    //         accessor: 'id'
    //     },
    // ]
    //     const columns = useMemo(() => COLUMNS, [])
    //     const datas = useMemo(() =>tableData, [])
      
        // const {
        //     getTableProps,
        //     getTableBodyProps,
        //     headerGroups,
        //     footerGroups,
        //     rows,
        //     prepareRow
        //   } = useTable({
        //     columns,
        //     data:datas
        //   })
    return (
//         <div>
//             <table className="table-striped table">
//   <thead>
//     <tr>
//       <th >S.no</th>
//       <th>Customer</th>
//       <th>Mobile No.</th>
//       <th>Distance</th>
//       <th>Payments </th>
//       <th>Total </th>
//     </tr>
//   </thead>
//   <tbody>

//       {
//            list && list.length > 0 ? 
                    
//            list.map((data,i)=>(
//             <tr>
//             <td>{i+1}</td>
//             <td>{data.cus_name}</td>
//             <td>{data.mobile}</td>
//             <td>{data.distance}</td>
//             <td>{data.fixed_payment}</td>
//             <td>{data.total}</td>
            
//           </tr>
//            )):"Loding ..."
           

//       }
   
  
//   </tbody>
// </table>
//         </div>
<>
{/* <table {...getTableProps()}>
  <thead>
    {headerGroups.map(headerGroup => (
      <tr {...headerGroup.getHeaderGroupProps()}>
        
        {headerGroup.headers && headerGroup.headers >0 ? headerGroup.headers.map(column => (
          <th {...column.getHeaderProps()}>{column.render('Header')}</th>
        )):"hello"
    }

      </tr>
    ))}
  </thead>
  <tbody {...getTableBodyProps()}>
     { rows &&rows.length? 
     rows.map(row => {
      prepareRow(row)
      return (
        <tr {...row.getRowProps()}>
          {row.cells.map(cell => {
            return <td {...cell.getCellProps()}>{cell.render('Cell')}</td>
          })}
        </tr>
      )
    }
    
    ):"load"
}
  </tbody>
  <tfoot>
    {footerGroups.map(footerGroup => (
      <tr {...footerGroup.getFooterGroupProps()}>
        {footerGroup.headers.map(column => (
          <td {...column.getFooterProps()}>{column.render('Footer')}</td>
        ))}
      </tr>
    ))}
  </tfoot>
</table> */}
</>
    )
}

export default CarTable
