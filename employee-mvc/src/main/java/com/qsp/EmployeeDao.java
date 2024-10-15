package com.qsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class EmployeeDao {

	@Autowired
	EntityManager em;

	public void saveEmployee(Employee employee) {
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(employee);
		et.commit();
	}
	public Employee findEmployeeById(int id) {
		return em.find(Employee.class, id);
	}
	public void updateEmployee(Employee employee) {
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(employee);
		et.commit();
	}
	public void deleteEmployeeById(int id) {
		Employee employee=findEmployeeById(id);
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.remove(employee);
		et.commit();
	}
	public List<Employee> findAll(){
		Query query=em.createQuery("select e from Employee e");
		return query.getResultList();
	}

}
