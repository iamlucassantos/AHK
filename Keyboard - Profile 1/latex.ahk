﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; LATEX WITH AHK in OVERLEAF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; create basic blocks
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
Add_block(message)
{
temp := clipboardall
clipboard := message
SendInput, ^v
sleep, 50
clipboard := temp
return
}


	
:o:bga::
	message =
	(
\begin{align}

\end{align}
	)
	Add_block(message)
	send, {Up}`t
	return

:o:bge::
	message =
	(
\begin{equation}

\end{equation}
	)
	Add_block(message)
	send, {Up}`t
	return

:o:bgc::
	message =
	(
\begin{center}

\end{center}
	)
	Add_block(message)
	send, {Up}`t
	return

:o:bgf:: 
	message = 
	(
\begin{figure}[H]
	\centering
	\includegraphics[width=0.5\textwidth]{}
	\captionof{figure}{caption}
	\label{fig:fig}
\end{figure}
	)
	Add_block(message)
	sleep, 50
	Send, {Up 3}{End}{Left}
	return
	
	
:o:bgfm::
	message =
	(
\begin{figure}[h]
\begin{minipage}{0.49\textwidth}
	\centering
	\includegraphics[width=1\textwidth]{src1}
	\caption{caption1}
	\label{fig:fig1}
\end{minipage}
\begin{minipage}{0.49\textwidth}
	\centering
	\includegraphics[width=1\textwidth]{src2}
	\caption{caption2}
	\label{fig:fig2}
\end{minipage}
\end{figure}
	)
	Add_block(message)
	return
	
:o:bgmp::
	message = 
	(
\begin{minipage}{.49\textwidth}

\end{minipage}
\begin{minipage}{.49\textwidth}

\end{minipage}
	)
	Add_block(message)
	Send, {Up}`t{up}{Up}{up}`t
	return
	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Aerospace Hotstrings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

::a/c::aircraft
::s/c::spacecraft
::aoa::angle of attack


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Personal Hotstrings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

::@name::Lucas Vieira dos Santos
::@e::lucas6eng@gmail.com
::@ue::l.vieiradossantos@student.tudelft.nl
::@uid::4833570
:o:@sig::
(
Best,

Lucas Vieira dos Santos
)