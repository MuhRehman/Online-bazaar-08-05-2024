import React from 'react';
import { useContext } from 'react';
import { BooksContext } from "../App";


// Shopping cart component
const ShopCart = ({ cart , updateData }) => {

  
  const context = useContext(BooksContext);

  const totalCartAmount = context.state.cart
    .reduce((total, book) => (total = total + book.price * book.count), 0)
    .toFixed(2);

  const totalCartCount = context.state.cart.reduce(
    (total, book) => (total = total + book.count),
    0
  );


  // const totalCartAmount = context.state.cart;
  console.log("total Cart Amounts",totalCartAmount);

  return (
    <div>
      <h2>Shopping Cart:--  { totalCartCount}</h2>
      <h2>Shopping Cart:--  { updateData}</h2>
 
      {context.state.cart.map((book) => (
        <div className="book" key={book.id}>
          <img src={book.image} alt={book.name} />
          <div>
            <h4>{book.name}</h4>
            <p>Author: {book.author}</p>
            <p>Price: &#8378;{book.price}</p>
            <p>Total: &#8378;{(book.price * book.count).toFixed(2)}</p>
            <p>You have a total of {book.count} in your cart.</p>
            <button onClick={() => context.decrease(book.id)}>-</button>
            <button onClick={() => context.removeFromCart(book.id)}>
              Remove
            </button>
            <button onClick={() => context.increase(book.id)}>+</button>
          </div>
        </div>
      ))}
      <ul>
        {cart.map(item => (
          <li key={item.id}>
            {item.name} - Quantity: {item.quantity}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default ShopCart;