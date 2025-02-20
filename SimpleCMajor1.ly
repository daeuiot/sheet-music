\version "2.22.2"

\header {
  title = "Simple Piano Piece in C Major"
  %composer = "Example"
}

\score {
  \new PianoStaff <<
    \new Staff = "RH" {
      \clef treble
      \key c \major
      \time 4/4
      \relative c' {
        % Measures 1-4: Original right-hand melody
        % Measure 1 (C/E)
        e4 f g e |
        % Measure 2 (G/B)
        d4 e d c |
        % Measure 3 (Am)
        c4 b a g |
        % Measure 4 (G)
        b4 g a g |
        % Measures 5-9: Now using the original left-hand Alberti bass
        % Measure 5 (C)
        c8 e g e c e g e |
        % Measure 6 (Dm)
        d8 f a f d f a f |
        % Measure 7 (Em)
        e8 g b g e g b g |
        % Measure 8 (G)
        g8 b d b g b d b |
        % Measure 9 (final C)
        <c e g>1 \bar "|."
      }
    }

    \new Staff = "LH" {
      \clef bass
      \key c \major
      \time 4/4
      \relative c {
        % Measures 1-4: Original left-hand Alberti bass
        % Measure 1 (C/E)
        e8 g c g e g c g |
        % Measure 2 (G/B)
        b8 d g d b d g d |
        % Measure 3 (Am)
        a8 c e c a c e c |
        % Measure 4 (G)
        g8 b d b g b d b |
        % Measures 5-9: Now using the original right-hand melody
        % Measure 5 (C)
        e4 f g e |
        % Measure 6 (Dm)
        f4 e d c |
        % Measure 7 (Em)
        g4 f e e |
        % Measure 8 (G)
        d4 b a r |
        % Measure 9 (final C)
        c1 \bar "|."
      }
    }
  >>

  \layout { }
  \midi { \tempo 4=80 }
}
