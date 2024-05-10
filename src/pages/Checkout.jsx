import React, { useState ,useEffect , useRef} from "react";

export default function Checkout(checkoutdata) {


    const [fname, setFullName] = useState("");
    const [orderemail, setOrderEmail] = useState("");
    const [orderaddress, setOrderAddress] = useState("");
    const [Error, setError] = useState("");


    console.log("checkoutdata_id",checkoutdata);


    const handleInputChange = (e, type) => {
      
        switch(type){
         
            
            case "fname":
                setError("");
                setFullName(e.target.value);
                if(e.target.value === ""){
                    setError("Full name has left blank!");
                }
                break;
            case "orderemail":
                setError("");
                setOrderEmail(e.target.value);

                if(e.target.value === ""){
                    setError("Email has left blank!");
                }
                break;
            case "orderaddress":
                setError("");
                setOrderAddress(e.target.value);
                if(e.target.value === ""){
                    setError("Address has left blank!");
                }
                break;
           
            default:
        }
    }

  return (
     <>
    {/* {<h1> {checkoutdata.checkoutdata[0].id}</h1>} */}
    
     {/* {checkoutdat.map((data, index) => { const { id, image, pname, pprice, qty } = data;
                                      return (
                                        data
                                        // <h1 >{id}</h1>
                                        // <h1>{pname}</h1>
                                      );
})} */}
     	<section class="cart">
		{/* <div class="cart-item">
			<img src="https://cdn.shopify.com/s/files/1/0814/1617/products/IMG_0716_1024x1024.png" class="image"/>
			<p class="title">Lorem ipsum dolor <span>2.5cm &times; 2.8cm</span></p>
			<p class="currency">CHF</p>
			<p class="price">4.25</p>
		</div>
		<div class="cart-item">
			<img src="https://cdn.shopify.com/s/files/1/0814/1617/products/IMG_2760_1024x1024.png" class="image"/>
			<p class="title">Sit amet <span>2.4cm &times; 2.8cm</span></p>
			<p class="currency">CHF</p>
			<p class="price">4.25</p>
		</div>
		<div class="cart-item">
			<img src="https://cdn.shopify.com/s/files/1/0814/1617/products/IMG_2766_1024x1024.png" class="image" />
			<p class="title">Consectetur adipiscing elit <span>2.7cm &times; 2.3cm</span></p>
			<p class="currency">CHF</p>
			<p class="price">5.60</p>
		</div>
		<div class="shipping">
			<p class="title">Shipping</p>
			<p class="currency">CHF</p>
			<p class="price">2.70</p>
		</div>
		<div class="total">
			<p class="title">Total</p>
			<p class="currency">CHF</p>
			<p class="price">16.80</p>
		</div> */}
	</section>
	<section class="checkout">
		<header>
			<h1>Checkout  j</h1>
             {<h1> {checkoutdata.checkoutdata[0].id}</h1>}
             { checkoutdata.checkoutdata.map((data, index) => { 
                  <h1>sdsds{data.name}</h1>
                                    
                                    })}
			{/* <h1> {checkoutdata[0]}</h1> */}
			<div>
                {/* <table>
            <tbody>
                                    {checkoutdata.map((data, index) => {
                                      const { id, image, pname, pprice, qty } =
                                        data;
                                      return (
                                        <tr key={index}>
                                          <td>
                                            <button
                                              className="prdct-delete" 
                                            //   onClick={() =>
                                            //     removeFromCarts(id)
                                            //   }
                                        //     >
                                              
                                        //       <i className="fa fa-trash-alt"></i>
                                        //     </button>
                                        //   </td>
                                        //   <td>
                                        //     <div className="product-img">
                                        //     {id}
                                              {/* <img src={image} alt="" /> */}
                                            {/* </div>
                                          </td>
                                          <td>
                                            <div className="product-name">
                                              <p>{pname}</p>
                                            </div>
                                          </td>
                                          <td>${pprice}</td> */}
                                          {/* <td>
                                            <div className="prdct-qty-container">
                                              <button
                                                className="prdct-qty-btn"
                                                type="button"
                                                onClick={() =>
                                                  decreaseQuantity(index)
                                                }
                                              >
                                                <i className="fa fa-minus"></i>
                                              </button>
                                              <input
                                                type="text"
                                                name="qty"
                                                className="qty-input-box"
                                                value={qty}
                                                disabled
                                              />
                                              <button
                                                className="prdct-qty-btn"
                                                type="button"
                                                onClick={() =>
                                                  increaseQuantity(index)
                                                }
                                              >
                                                <i className="fa fa-plus"></i>
                                              </button>
                                            </div>
                                          </td> */}
                                          {/* <td className="text-right">
                                            ${(qty * pprice).toFixed(0)}
                                          </td> */}
                                        {/* </tr> */}
                                      {/* ); */}
                                    {/* })} */}
                                  {/* </tbody> */}
                                  {/* </table> */}
            </div>
			<p>by </p>
		</header>
		<form action="post">
			<div class="input-group">
				<div class="label">
					<label for="name">Full Name</label>
				</div>
				<div class="input">
					<input type="text" id="fullname" name='fname' placeholder="Name"
                      value={fname}
                      onChange={(e) => handleInputChange(e, "fname")}
                    required />
				</div>
			</div>
			<div class="input-group">
				<div class="label">
					<label for="number">Email</label>
				</div>
				<div class="input number">
					<input type="number"  id="orderemail" name='orderemail' placeholder="Email" 
                     value={orderemail}
                     onChange={(e) => handleInputChange(e, "orderemail")}
                    required />
                       
				</div>
			</div>
			<div class="input-group">
				<div class="label">
					<label for="cvc">Address</label>
				</div>
				<div class="input">
					<input type="number" id="address" name='orderaddress' placeholder="Address"
                      value={orderaddress}
                      onChange={(e) => handleInputChange(e, "orderaddress")}
                    required />
				</div>
			</div>
			<div class="input-group">
				<button>Confirm my order</button>
			</div>
		</form>
	</section>
     </>
  )
}
