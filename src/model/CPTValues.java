package model;

import java.util.List;

public class CPTValues {
	private Performance p;
	private Concerts c;
	private TicketVenuePrices t;
	
	public CPTValues() {
		super();
	}

	public Performance getP() {
		return p;
	}

	public void setP(Performance p) {
		this.p = p;
	}

	public Concerts getC() {
		return c;
	}

	public void setC(Concerts c) {
		this.c = c;
	}

	public TicketVenuePrices getT() {
		return t;
	}

	public void setT(TicketVenuePrices t) {
		this.t = t;
	}
	
}
