<table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Made In</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="student : ${liststu}">
                <td th:text="${student.ref_id}"></td>
                <td th:text="${student.name}">${student.name}</td>
                <td th:text="${product.brand}">Brand</td>
                <td th:text="${product.madein}">Made in</td>
                <td th:text="${product.price}">Price</td>
            </tr>
        </tbody>
    </table>