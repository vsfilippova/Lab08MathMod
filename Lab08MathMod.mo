model Lab08MathMod
// Вариант 55

// Начальные условия
parameter Real M0_1 = 7.6; // оборотные средства фирмы 1 в начальный момент
parameter Real M0_2 =9.6;// оборотные средства фирмы 2 в начальный момент

parameter Real p_cr=46; //критическая стоимость продукта
parameter Real N = 55;//число потребителей производимого продукта
parameter Real q =1;//максимальная потребность одного человека в продукте в единицу времени
// Параметры
parameter Real tau1=32;//длительность производственного цикла фирмы 1
parameter Real tau2 = 26;//длительность производственного цикла фирмы 2

parameter Real p1=9.6;//себестоимость продукта у фирмы 1
parameter Real p2=11.6;//себестоимость продукта у фирмы 2

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*p1*p1*tau2*tau2*p2*p2*N*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

Real M1(start = M0_1);
Real M2(start = M0_2);

equation
// Случай 1
/*der(M1)=M1-(b/c1)*M1*M2-(a1/c1)*M1*M1;
der(M2)=(c2/c1)*M2-(b/c1)*M1*M2-(a2/c1)*M2*M2; */

// Случай 2
der(M1)=M1-((b/c1)+0.00045)*M1*M2-(a1/c1)*M1*M1;
der(M2)=(c2/c1)*M2-(b/c1)*M1*M2-(a2/c1)*M2*M2;

end Lab08MathMod;
