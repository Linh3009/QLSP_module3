package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Product;
import service.ProductService;

import java.io.IOException;

@WebServlet(name = "EditProductServlet", value = "/edit")
public class EditProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Product p: ProductService.products) {
            if (p.getId() == id){
             request.setAttribute("p",p);  // thêm 1 DL mới vào request
            }
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("editProduct.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        double price = Double.parseDouble(request.getParameter("price"));

        ProductService.edit(id,new Product(id, name, img, price) );
        response.sendRedirect("/products");
    }
}
