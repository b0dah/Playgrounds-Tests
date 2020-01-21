#!/usr/bin/perl

#if swift(>=5.0)
print("Running Swift 5.0 or later")
#else
print("Running old Swift")
#endif

let myString = "diam(N) :- findall(V, (edge(V,_);edge(_, V)),T),findall(P, (member(A, T), member(B,T), A=B, findMinPath(A,B,P)), L),maxPath(L, N).findMinPath(A,B,P) :- findall(X, findPath(A,B,X),L), minPath(L,P), !.findPath(A,B,P) :- findPath(A,B,[A],P).findPath(A,A,P,P).findPath(A,B,T,P) :- (edge(A,Z), edge(Z,A)), not(member(Z,T)), findPath(Z,B,[Z|T], P).minPath([A], A):-!.minPath([H|T], P) :- minPath(T,P1),!,length(H,N), length(P1, M), (N<M, P=H; P=P1).maxPath([A], A):-!.maxPath([H|T], P) :- maxPath(T,P1),!,length(H,N), length(P1, M), (N>M, P=H; P=P1)."
				
let trimmedOne = myString.trimmingCharacters(in: .whitespacesAndNewlines)

