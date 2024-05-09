import React, { useState } from 'react';
import ShopCart from '../components/ShopCart';
import { context } from 'react';
import { useContext } from 'react';
import { BooksContext } from "../App";




// Main App component
const Shoppingcart = (testing ) => {
  const [cart, setCart] = useState([]);
  const [total, setTotal] = useState(0);
  const context = useContext(BooksContext);
  const addItemToCart = (item) => {
    setCart([...cart, item]);
    setTotal(total + item.price);
  };

  const removeItemFromCart = (index) => {
    const newCart = [...cart];
    const removedItem = newCart.splice(index, 1)[0];
    setCart(newCart);
    setTotal(total - removedItem.price);
  };

  return (
    <div>
    <h1>Shopping Cart  </h1>

    {/* {context.state.cart.map((book) => (
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
      ))} */}
    <div>
      <h2>Items</h2>
      <h2>Items {cart.length}</h2>
      <ul>
        {cart.map((item, index) => (
          <li key={index}>
            {item.name} - ${item.price}
            <button onClick={() => removeItemFromCart(index)}>Remove</button>
          </li>
        ))}
      </ul>
      <p>Total: ${total}</p>
    </div>
    <div>
      <h2>Available Items</h2>
      <ul>
        <li>
          Item 1 - $10 <button onClick={() => addItemToCart({ name: 'Item 1', price: 10 })}>Add to Cart</button>
        </li>
        <li>
          Item 2 - $20 <button onClick={() => addItemToCart({ name: 'Item 2', price: 20 })}>Add to Cart</button>
        </li>
        <li>
          Item 3 - $30 <button onClick={() => addItemToCart({ name: 'Item 3', price: 30 })}>Add to Cart</button>
        </li>
      </ul>
    </div>
  </div>
  );
};

export default Shoppingcart;
{}