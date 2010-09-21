\version "2.10.33"

\paper {
  myStaffSize = #20
  #(define fonts
    (make-pango-font-tree "GaramondNo8"
                          "Nimbus Sans"
                          "Luxi Mono"
                           (/ myStaffSize 20)))
}
% #(set-global-staff-size 26)

%     (make-pango-font-tree "URW Palladio L"
%                           "Nimbus Sans"
%                           "Luxi Mono"
%                            (/ myStaffSize 20)))
