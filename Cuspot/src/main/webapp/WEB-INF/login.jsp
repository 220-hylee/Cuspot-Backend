<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <style type="text/css">
        .swal-icon--error {
            border-color: #f27474;
            -webkit-animation: animateErrorIcon .5s;
            animation: animateErrorIcon .5s
        }

        .swal-icon--error__x-mark {
            position: relative;
            display: block;
            -webkit-animation: animateXMark .5s;
            animation: animateXMark .5s
        }

        .swal-icon--error__line {
            position: absolute;
            height: 5px;
            width: 47px;
            background-color: #f27474;
            display: block;
            top: 37px;
            border-radius: 2px
        }

        .swal-icon--error__line--left {
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            left: 17px
        }

        .swal-icon--error__line--right {
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            right: 16px
        }

        @-webkit-keyframes animateErrorIcon {
            0% {
                -webkit-transform: rotateX(100deg);
                transform: rotateX(100deg);
                opacity: 0
            }

            to {
                -webkit-transform: rotateX(0deg);
                transform: rotateX(0deg);
                opacity: 1
            }
        }

        @keyframes animateErrorIcon {
            0% {
                -webkit-transform: rotateX(100deg);
                transform: rotateX(100deg);
                opacity: 0
            }

            to {
                -webkit-transform: rotateX(0deg);
                transform: rotateX(0deg);
                opacity: 1
            }
        }

        @-webkit-keyframes animateXMark {
            0% {
                -webkit-transform: scale(.4);
                transform: scale(.4);
                margin-top: 26px;
                opacity: 0
            }

            50% {
                -webkit-transform: scale(.4);
                transform: scale(.4);
                margin-top: 26px;
                opacity: 0
            }

            80% {
                -webkit-transform: scale(1.15);
                transform: scale(1.15);
                margin-top: -6px
            }

            to {
                -webkit-transform: scale(1);
                transform: scale(1);
                margin-top: 0;
                opacity: 1
            }
        }

        @keyframes animateXMark {
            0% {
                -webkit-transform: scale(.4);
                transform: scale(.4);
                margin-top: 26px;
                opacity: 0
            }

            50% {
                -webkit-transform: scale(.4);
                transform: scale(.4);
                margin-top: 26px;
                opacity: 0
            }

            80% {
                -webkit-transform: scale(1.15);
                transform: scale(1.15);
                margin-top: -6px
            }

            to {
                -webkit-transform: scale(1);
                transform: scale(1);
                margin-top: 0;
                opacity: 1
            }
        }

        .swal-icon--warning {
            border-color: #f8bb86;
            -webkit-animation: pulseWarning .75s infinite alternate;
            animation: pulseWarning .75s infinite alternate
        }

        .swal-icon--warning__body {
            width: 5px;
            height: 47px;
            top: 10px;
            border-radius: 2px;
            margin-left: -2px
        }

        .swal-icon--warning__body,
        .swal-icon--warning__dot {
            position: absolute;
            left: 50%;
            background-color: #f8bb86
        }

        .swal-icon--warning__dot {
            width: 7px;
            height: 7px;
            border-radius: 50%;
            margin-left: -4px;
            bottom: -11px
        }

        @-webkit-keyframes pulseWarning {
            0% {
                border-color: #f8d486
            }

            to {
                border-color: #f8bb86
            }
        }

        @keyframes pulseWarning {
            0% {
                border-color: #f8d486
            }

            to {
                border-color: #f8bb86
            }
        }

        .swal-icon--success {
            border-color: #a5dc86
        }

        .swal-icon--success:after,
        .swal-icon--success:before {
            content: "";
            border-radius: 50%;
            position: absolute;
            width: 60px;
            height: 120px;
            background: #fff;
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg)
        }

        .swal-icon--success:before {
            border-radius: 120px 0 0 120px;
            top: -7px;
            left: -33px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-transform-origin: 60px 60px;
            transform-origin: 60px 60px
        }

        .swal-icon--success:after {
            border-radius: 0 120px 120px 0;
            top: -11px;
            left: 30px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-transform-origin: 0 60px;
            transform-origin: 0 60px;
            -webkit-animation: rotatePlaceholder 4.25s ease-in;
            animation: rotatePlaceholder 4.25s ease-in
        }

        .swal-icon--success__ring {
            width: 80px;
            height: 80px;
            border: 4px solid hsla(98, 55%, 69%, .2);
            border-radius: 50%;
            box-sizing: content-box;
            position: absolute;
            left: -4px;
            top: -4px;
            z-index: 2
        }

        .swal-icon--success__hide-corners {
            width: 5px;
            height: 90px;
            background-color: #fff;
            padding: 1px;
            position: absolute;
            left: 28px;
            top: 8px;
            z-index: 1;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg)
        }

        .swal-icon--success__line {
            height: 5px;
            background-color: #a5dc86;
            display: block;
            border-radius: 2px;
            position: absolute;
            z-index: 2
        }

        .swal-icon--success__line--tip {
            width: 25px;
            left: 14px;
            top: 46px;
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            -webkit-animation: animateSuccessTip .75s;
            animation: animateSuccessTip .75s
        }

        .swal-icon--success__line--long {
            width: 47px;
            right: 8px;
            top: 38px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-animation: animateSuccessLong .75s;
            animation: animateSuccessLong .75s
        }

        @-webkit-keyframes rotatePlaceholder {
            0% {
                -webkit-transform: rotate(-45deg);
                transform: rotate(-45deg)
            }

            5% {
                -webkit-transform: rotate(-45deg);
                transform: rotate(-45deg)
            }

            12% {
                -webkit-transform: rotate(-405deg);
                transform: rotate(-405deg)
            }

            to {
                -webkit-transform: rotate(-405deg);
                transform: rotate(-405deg)
            }
        }

        @keyframes rotatePlaceholder {
            0% {
                -webkit-transform: rotate(-45deg);
                transform: rotate(-45deg)
            }

            5% {
                -webkit-transform: rotate(-45deg);
                transform: rotate(-45deg)
            }

            12% {
                -webkit-transform: rotate(-405deg);
                transform: rotate(-405deg)
            }

            to {
                -webkit-transform: rotate(-405deg);
                transform: rotate(-405deg)
            }
        }

        @-webkit-keyframes animateSuccessTip {
            0% {
                width: 0;
                left: 1px;
                top: 19px
            }

            54% {
                width: 0;
                left: 1px;
                top: 19px
            }

            70% {
                width: 50px;
                left: -8px;
                top: 37px
            }

            84% {
                width: 17px;
                left: 21px;
                top: 48px
            }

            to {
                width: 25px;
                left: 14px;
                top: 45px
            }
        }

        @keyframes animateSuccessTip {
            0% {
                width: 0;
                left: 1px;
                top: 19px
            }

            54% {
                width: 0;
                left: 1px;
                top: 19px
            }

            70% {
                width: 50px;
                left: -8px;
                top: 37px
            }

            84% {
                width: 17px;
                left: 21px;
                top: 48px
            }

            to {
                width: 25px;
                left: 14px;
                top: 45px
            }
        }

        @-webkit-keyframes animateSuccessLong {
            0% {
                width: 0;
                right: 46px;
                top: 54px
            }

            65% {
                width: 0;
                right: 46px;
                top: 54px
            }

            84% {
                width: 55px;
                right: 0;
                top: 35px
            }

            to {
                width: 47px;
                right: 8px;
                top: 38px
            }
        }

        @keyframes animateSuccessLong {
            0% {
                width: 0;
                right: 46px;
                top: 54px
            }

            65% {
                width: 0;
                right: 46px;
                top: 54px
            }

            84% {
                width: 55px;
                right: 0;
                top: 35px
            }

            to {
                width: 47px;
                right: 8px;
                top: 38px
            }
        }

        .swal-icon--info {
            border-color: #c9dae1
        }

        .swal-icon--info:before {
            width: 5px;
            height: 29px;
            bottom: 17px;
            border-radius: 2px;
            margin-left: -2px
        }

        .swal-icon--info:after,
        .swal-icon--info:before {
            content: "";
            position: absolute;
            left: 50%;
            background-color: #c9dae1
        }

        .swal-icon--info:after {
            width: 7px;
            height: 7px;
            border-radius: 50%;
            margin-left: -3px;
            top: 19px
        }

        .swal-icon {
            width: 80px;
            height: 80px;
            border-width: 4px;
            border-style: solid;
            border-radius: 50%;
            padding: 0;
            position: relative;
            box-sizing: content-box;
            margin: 20px auto
        }

        .swal-icon:first-child {
            margin-top: 32px
        }

        .swal-icon--custom {
            width: auto;
            height: auto;
            max-width: 100%;
            border: none;
            border-radius: 0
        }

        .swal-icon img {
            max-width: 100%;
            max-height: 100%
        }

        .swal-title {
            color: rgba(0, 0, 0, .65);
            font-weight: 600;
            text-transform: none;
            position: relative;
            display: block;
            padding: 13px 16px;
            font-size: 27px;
            line-height: normal;
            text-align: center;
            margin-bottom: 0
        }

        .swal-title:first-child {
            margin-top: 26px
        }

        .swal-title:not(:first-child) {
            padding-bottom: 0
        }

        .swal-title:not(:last-child) {
            margin-bottom: 13px
        }

        .swal-text {
            font-size: 16px;
            position: relative;
            float: none;
            line-height: normal;
            vertical-align: top;
            text-align: left;
            display: inline-block;
            margin: 0;
            padding: 0 10px;
            font-weight: 400;
            color: rgba(0, 0, 0, .64);
            max-width: calc(100% - 20px);
            overflow-wrap: break-word;
            box-sizing: border-box
        }

        .swal-text:first-child {
            margin-top: 45px
        }

        .swal-text:last-child {
            margin-bottom: 45px
        }

        .swal-footer {
            text-align: right;
            padding-top: 13px;
            margin-top: 13px;
            padding: 13px 16px;
            border-radius: inherit;
            border-top-left-radius: 0;
            border-top-right-radius: 0
        }

        .swal-button-container {
            margin: 5px;
            display: inline-block;
            position: relative
        }

        .swal-button {
            background-color: #7cd1f9;
            color: #fff;
            border: none;
            box-shadow: none;
            border-radius: 5px;
            font-weight: 600;
            font-size: 14px;
            padding: 10px 24px;
            margin: 0;
            cursor: pointer
        }

        .swal-button:not([disabled]):hover {
            background-color: #78cbf2
        }

        .swal-button:active {
            background-color: #70bce0
        }

        .swal-button:focus {
            outline: none;
            box-shadow: 0 0 0 1px #fff, 0 0 0 3px rgba(43, 114, 165, .29)
        }

        .swal-button[disabled] {
            opacity: .5;
            cursor: default
        }

        .swal-button::-moz-focus-inner {
            border: 0
        }

        .swal-button--cancel {
            color: #555;
            background-color: #efefef
        }

        .swal-button--cancel:not([disabled]):hover {
            background-color: #e8e8e8
        }

        .swal-button--cancel:active {
            background-color: #d7d7d7
        }

        .swal-button--cancel:focus {
            box-shadow: 0 0 0 1px #fff, 0 0 0 3px rgba(116, 136, 150, .29)
        }

        .swal-button--danger {
            background-color: #e64942
        }

        .swal-button--danger:not([disabled]):hover {
            background-color: #df4740
        }

        .swal-button--danger:active {
            background-color: #cf423b
        }

        .swal-button--danger:focus {
            box-shadow: 0 0 0 1px #fff, 0 0 0 3px rgba(165, 43, 43, .29)
        }

        .swal-content {
            padding: 0 20px;
            margin-top: 20px;
            font-size: medium
        }

        .swal-content:last-child {
            margin-bottom: 20px
        }

        .swal-content__input,
        .swal-content__textarea {
            -webkit-appearance: none;
            background-color: #fff;
            border: none;
            font-size: 14px;
            display: block;
            box-sizing: border-box;
            width: 100%;
            border: 1px solid rgba(0, 0, 0, .14);
            padding: 10px 13px;
            border-radius: 2px;
            transition: border-color .2s
        }

        .swal-content__input:focus,
        .swal-content__textarea:focus {
            outline: none;
            border-color: #6db8ff
        }

        .swal-content__textarea {
            resize: vertical
        }

        .swal-button--loading {
            color: transparent
        }

        .swal-button--loading~.swal-button__loader {
            opacity: 1
        }

        .swal-button__loader {
            position: absolute;
            height: auto;
            width: 43px;
            z-index: 2;
            left: 50%;
            top: 50%;
            -webkit-transform: translateX(-50%) translateY(-50%);
            transform: translateX(-50%) translateY(-50%);
            text-align: center;
            pointer-events: none;
            opacity: 0
        }

        .swal-button__loader div {
            display: inline-block;
            float: none;
            vertical-align: baseline;
            width: 9px;
            height: 9px;
            padding: 0;
            border: none;
            margin: 2px;
            opacity: .4;
            border-radius: 7px;
            background-color: hsla(0, 0%, 100%, .9);
            transition: background .2s;
            -webkit-animation: swal-loading-anim 1s infinite;
            animation: swal-loading-anim 1s infinite
        }

        .swal-button__loader div:nth-child(3n+2) {
            -webkit-animation-delay: .15s;
            animation-delay: .15s
        }

        .swal-button__loader div:nth-child(3n+3) {
            -webkit-animation-delay: .3s;
            animation-delay: .3s
        }

        @-webkit-keyframes swal-loading-anim {
            0% {
                opacity: .4
            }

            20% {
                opacity: .4
            }

            50% {
                opacity: 1
            }

            to {
                opacity: .4
            }
        }

        @keyframes swal-loading-anim {
            0% {
                opacity: .4
            }

            20% {
                opacity: .4
            }

            50% {
                opacity: 1
            }

            to {
                opacity: .4
            }
        }

        .swal-overlay {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            text-align: center;
            font-size: 0;
            overflow-y: auto;
            background-color: rgba(0, 0, 0, .4);
            z-index: 10000;
            pointer-events: none;
            opacity: 0;
            transition: opacity .3s
        }

        .swal-overlay:before {
            content: " ";
            display: inline-block;
            vertical-align: middle;
            height: 100%
        }

        .swal-overlay--show-modal {
            opacity: 1;
            pointer-events: auto
        }

        .swal-overlay--show-modal .swal-modal {
            opacity: 1;
            pointer-events: auto;
            box-sizing: border-box;
            -webkit-animation: showSweetAlert .3s;
            animation: showSweetAlert .3s;
            will-change: transform
        }

        .swal-modal {
            width: 478px;
            opacity: 0;
            pointer-events: none;
            background-color: #fff;
            text-align: center;
            border-radius: 5px;
            position: static;
            margin: 20px auto;
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: scale(1);
            transform: scale(1);
            -webkit-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
            z-index: 10001;
            transition: opacity .2s, -webkit-transform .3s;
            transition: transform .3s, opacity .2s;
            transition: transform .3s, opacity .2s, -webkit-transform .3s
        }

        @media (max-width:500px) {
            .swal-modal {
                width: calc(100% - 20px)
            }
        }

        @-webkit-keyframes showSweetAlert {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1)
            }

            1% {
                -webkit-transform: scale(.5);
                transform: scale(.5)
            }

            45% {
                -webkit-transform: scale(1.05);
                transform: scale(1.05)
            }

            80% {
                -webkit-transform: scale(.95);
                transform: scale(.95)
            }

            to {
                -webkit-transform: scale(1);
                transform: scale(1)
            }
        }

        @keyframes showSweetAlert {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1)
            }

            1% {
                -webkit-transform: scale(.5);
                transform: scale(.5)
            }

            45% {
                -webkit-transform: scale(1.05);
                transform: scale(1.05)
            }

            80% {
                -webkit-transform: scale(.95);
                transform: scale(.95)
            }

            to {
                -webkit-transform: scale(1);
                transform: scale(1)
            }
        }
    </style>
    <meta charset="utf-8">
    <link rel="icon" href="/favicon.ico">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="theme-color" content="#000000">
    <meta name="description" content="Facebook clone created by using react.js">
    <meta name="og:author" content="Phanison">
    <meta property="og:title" content="Facebook Clone by Phanison">
    <meta property="og:image" content="/preview.png">
    <meta property="og:description"
        content="Built responsive Facebook web application clone using React, Material-UI (frontend) and Firebase (backend)">
    <link rel="apple-touch-icon" href="/logo.png">
    <link rel="manifest" href="/manifest.json">
    <title>Facebook clone by Phanison</title>
    <script defer="defer" src="/static/js/main.c9c2e194.js"></script>
    <link href="/static/css/main.1d082867.css" rel="stylesheet">
    <style data-jss="" data-meta="MuiPaper">
        .MuiPaper-root {
            color: rgba(0, 0, 0, 0.87);
            transition: box-shadow 300ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
            background-color: #fff;
        }

        .MuiPaper-rounded {
            border-radius: 4px;
        }

        .MuiPaper-outlined {
            border: 1px solid rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation0 {
            box-shadow: none;
        }

        .MuiPaper-elevation1 {
            box-shadow: 0px 2px 1px -1px rgba(0, 0, 0, 0.2), 0px 1px 1px 0px rgba(0, 0, 0, 0.14), 0px 1px 3px 0px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation2 {
            box-shadow: 0px 3px 1px -2px rgba(0, 0, 0, 0.2), 0px 2px 2px 0px rgba(0, 0, 0, 0.14), 0px 1px 5px 0px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation3 {
            box-shadow: 0px 3px 3px -2px rgba(0, 0, 0, 0.2), 0px 3px 4px 0px rgba(0, 0, 0, 0.14), 0px 1px 8px 0px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation4 {
            box-shadow: 0px 2px 4px -1px rgba(0, 0, 0, 0.2), 0px 4px 5px 0px rgba(0, 0, 0, 0.14), 0px 1px 10px 0px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation5 {
            box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2), 0px 5px 8px 0px rgba(0, 0, 0, 0.14), 0px 1px 14px 0px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation6 {
            box-shadow: 0px 3px 5px -1px rgba(0, 0, 0, 0.2), 0px 6px 10px 0px rgba(0, 0, 0, 0.14), 0px 1px 18px 0px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation7 {
            box-shadow: 0px 4px 5px -2px rgba(0, 0, 0, 0.2), 0px 7px 10px 1px rgba(0, 0, 0, 0.14), 0px 2px 16px 1px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation8 {
            box-shadow: 0px 5px 5px -3px rgba(0, 0, 0, 0.2), 0px 8px 10px 1px rgba(0, 0, 0, 0.14), 0px 3px 14px 2px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation9 {
            box-shadow: 0px 5px 6px -3px rgba(0, 0, 0, 0.2), 0px 9px 12px 1px rgba(0, 0, 0, 0.14), 0px 3px 16px 2px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation10 {
            box-shadow: 0px 6px 6px -3px rgba(0, 0, 0, 0.2), 0px 10px 14px 1px rgba(0, 0, 0, 0.14), 0px 4px 18px 3px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation11 {
            box-shadow: 0px 6px 7px -4px rgba(0, 0, 0, 0.2), 0px 11px 15px 1px rgba(0, 0, 0, 0.14), 0px 4px 20px 3px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation12 {
            box-shadow: 0px 7px 8px -4px rgba(0, 0, 0, 0.2), 0px 12px 17px 2px rgba(0, 0, 0, 0.14), 0px 5px 22px 4px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation13 {
            box-shadow: 0px 7px 8px -4px rgba(0, 0, 0, 0.2), 0px 13px 19px 2px rgba(0, 0, 0, 0.14), 0px 5px 24px 4px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation14 {
            box-shadow: 0px 7px 9px -4px rgba(0, 0, 0, 0.2), 0px 14px 21px 2px rgba(0, 0, 0, 0.14), 0px 5px 26px 4px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation15 {
            box-shadow: 0px 8px 9px -5px rgba(0, 0, 0, 0.2), 0px 15px 22px 2px rgba(0, 0, 0, 0.14), 0px 6px 28px 5px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation16 {
            box-shadow: 0px 8px 10px -5px rgba(0, 0, 0, 0.2), 0px 16px 24px 2px rgba(0, 0, 0, 0.14), 0px 6px 30px 5px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation17 {
            box-shadow: 0px 8px 11px -5px rgba(0, 0, 0, 0.2), 0px 17px 26px 2px rgba(0, 0, 0, 0.14), 0px 6px 32px 5px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation18 {
            box-shadow: 0px 9px 11px -5px rgba(0, 0, 0, 0.2), 0px 18px 28px 2px rgba(0, 0, 0, 0.14), 0px 7px 34px 6px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation19 {
            box-shadow: 0px 9px 12px -6px rgba(0, 0, 0, 0.2), 0px 19px 29px 2px rgba(0, 0, 0, 0.14), 0px 7px 36px 6px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation20 {
            box-shadow: 0px 10px 13px -6px rgba(0, 0, 0, 0.2), 0px 20px 31px 3px rgba(0, 0, 0, 0.14), 0px 8px 38px 7px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation21 {
            box-shadow: 0px 10px 13px -6px rgba(0, 0, 0, 0.2), 0px 21px 33px 3px rgba(0, 0, 0, 0.14), 0px 8px 40px 7px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation22 {
            box-shadow: 0px 10px 14px -6px rgba(0, 0, 0, 0.2), 0px 22px 35px 3px rgba(0, 0, 0, 0.14), 0px 8px 42px 7px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation23 {
            box-shadow: 0px 11px 14px -7px rgba(0, 0, 0, 0.2), 0px 23px 36px 3px rgba(0, 0, 0, 0.14), 0px 9px 44px 8px rgba(0, 0, 0, 0.12);
        }

        .MuiPaper-elevation24 {
            box-shadow: 0px 11px 15px -7px rgba(0, 0, 0, 0.2), 0px 24px 38px 3px rgba(0, 0, 0, 0.14), 0px 9px 46px 8px rgba(0, 0, 0, 0.12);
        }
    </style>
    <style data-jss="" data-meta="MuiSvgIcon">
        .MuiSvgIcon-root {
            fill: currentColor;
            width: 1em;
            height: 1em;
            display: inline-block;
            font-size: 1.5rem;
            transition: fill 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
            flex-shrink: 0;
            user-select: none;
        }

        .MuiSvgIcon-colorPrimary {
            color: #3f51b5;
        }

        .MuiSvgIcon-colorSecondary {
            color: #f50057;
        }

        .MuiSvgIcon-colorAction {
            color: rgba(0, 0, 0, 0.54);
        }

        .MuiSvgIcon-colorError {
            color: #f44336;
        }

        .MuiSvgIcon-colorDisabled {
            color: rgba(0, 0, 0, 0.26);
        }

        .MuiSvgIcon-fontSizeInherit {
            font-size: inherit;
        }

        .MuiSvgIcon-fontSizeSmall {
            font-size: 1.25rem;
        }

        .MuiSvgIcon-fontSizeLarge {
            font-size: 2.1875rem;
        }
    </style>
    <style data-jss="" data-meta="makeStyles">
        .jss308 {
            width: 100vw;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .jss309 {
            height: 500px;
            display: flex;
            max-width: 400px;
            min-width: 400px;
            align-items: center;
            flex-direction: column;
            justify-content: space-between;
        }

        @media (max-width:599.95px) {
            .jss309 {
                width: 100%;
                border: 0;
                height: 100%;
                box-shadow: none;
                padding-top: 20px;
                border-radius: 0;
                padding-bottom: 5px;
            }
        }

        .jss310 {
            width: 200px;
        }

        .jss311 {
            width: 100%;
            display: flex;
            margin-top: 20px;
            align-items: center;
            justify-content: center;
        }

        .jss311>img {
            height: 35px;
        }

        .jss311>h4 {
            color: #0057ae;
            display: none;
            font-size: 40px;
            font-weight: 800;
            margin-left: 10px;
        }

        .jss312 {
            width: 250px;
            height: 200px;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
        }

        .jss312>input {
            border: 1px solid lightgrey;
            height: 35px;
            padding: 0 10px;
            border-radius: 2px;
            outline-width: 0;
        }

        .jss312>button {
            color: white;
            border: 1px solid lightgrey;
            height: 30px;
            font-size: 14px;
            font-weight: 600;
            border-radius: 4px;
            background-color: #2e81f4;
        }

        .jss313 {
            width: 100%;
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: center;
        }

        .jss313>section {
            width: 100%;
            display: flex;
            padding: 0 10px;
            align-items: center;
            justify-content: center;
        }

        .jss313>section>div {
            flex: 1;
            height: 1px;
            display: flex;
            opacity: 0.5;
            align-items: center;
            justify-content: center;
            background-color: lightgrey;
        }

        .jss313>section>p {
            color: grey;
            display: flex;
            padding: 0 10px;
            font-size: 12px;
            align-items: center;
            justify-content: center;
        }

        .jss314 {
            width: 100%;
            display: flex;
            align-items: center;
            flex-direction: column;
        }

        .jss314>section {
            width: 100%;
            display: flex;
            padding: 0 10px;
            align-items: center;
            margin-bottom: 5px;
            justify-content: center;
        }

        .jss314>div {
            flex: 1;
            width: 100%;
            margin: 4px 0;
            display: flex;
            align-items: center;
            justify-content: space-evenly;
        }

        .jss314>div>a {
            color: grey;
            transition: all 0.4s ease;
        }

        .jss314>div>a:hover {
            color: #363636;
        }

        .jss314>div>a>.MuiSvgIcon-root {
            font-size: 18px;
        }

        .jss314>section>div {
            flex: 1;
            height: 1px;
            display: flex;
            opacity: 0.5;
            align-items: center;
            justify-content: center;
            background-color: lightgrey;
        }

        .jss314>section>p {
            color: grey;
            display: flex;
            padding: 0 10px;
            font-size: 10px;
            align-items: center;
            justify-content: center;
        }
    </style>
    <style data-jss="" data-meta="makeStyles">
        .jss1 {
            width: 100%;
            height: 100%;
            border-radius: 0;
        }

        .jss2 {
            height: 8vh;
            z-index: 100;
            border-bottom: 1px solid rgba(212, 212, 212, 0.2);
        }

        .jss3 {
            height: 92vh;
            display: flex;
            overflow: hidden;
            justify-content: center;
        }

        .jss4 {
            width: 100%;
            height: 100%;
        }

        .jss5 {
            width: 100%;
            height: 100%;
            overflow-y: scroll;
            align-content: flex-start;
            justify-content: center;
        }

        .jss5::-webkit-scrollbar {
            width: 0;
            background: transparent;
        }

        .jss6 {
            width: 85%;
            height: 220px;
            overflow: hidden;
        }

        @media (max-width:1279.95px) {
            .jss6 {
                width: 90%;
            }
        }

        @media (max-width:959.95px) {
            .jss6 {
                width: 95%;
            }
        }

        @media (max-width:599.95px) {
            .jss6 {
                width: 100%;
            }
        }

        .jss7 {
            width: 85%;
            height: auto;
        }

        @media (max-width:1279.95px) {
            .jss7 {
                width: 90%;
            }
        }

        @media (max-width:959.95px) {
            .jss7 {
                width: 95%;
            }
        }

        @media (max-width:599.95px) {
            .jss7 {
                width: 100%;
            }
        }

        .jss8 {
            width: 85%;
            height: auto;
            padding-bottom: 10px;
        }

        @media (max-width:1279.95px) {
            .jss8 {
                width: 90%;
            }
        }

        @media (max-width:959.95px) {
            .jss8 {
                width: 95%;
            }
        }

        @media (max-width:599.95px) {
            .jss8 {
                width: 100%;
            }
        }

        .jss9 {
            width: 100%;
            height: 100%;
        }
    </style>
    <style type="text/css">
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700);
    </style>
    <style type="text/css">
        .mdl-button {
            background: 0 0;
            border: none;
            border-radius: 2px;
            color: #000;
            position: relative;
            height: 36px;
            margin: 0;
            min-width: 64px;
            padding: 0 16px;
            display: inline-block;
            font-family: Roboto, Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-weight: 500;
            text-transform: uppercase;
            line-height: 1;
            letter-spacing: 0;
            overflow: hidden;
            will-change: box-shadow;
            transition: box-shadow .2s cubic-bezier(.4, 0, 1, 1), background-color .2s cubic-bezier(.4, 0, .2, 1), color .2s cubic-bezier(.4, 0, .2, 1);
            outline: 0;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
            line-height: 36px;
            vertical-align: middle
        }

        .mdl-button::-moz-focus-inner {
            border: 0
        }

        .mdl-button:hover {
            background-color: hsla(0, 0%, 62%, .2)
        }

        .mdl-button:focus:not(:active) {
            background-color: rgba(0, 0, 0, .12)
        }

        .mdl-button:active {
            background-color: hsla(0, 0%, 62%, .4)
        }

        .mdl-button.mdl-button--colored {
            color: #3f51b5
        }

        .mdl-button.mdl-button--colored:focus:not(:active) {
            background-color: rgba(0, 0, 0, .12)
        }

        input.mdl-button[type=submit] {
            -webkit-appearance: none
        }

        .mdl-button--raised {
            background: hsla(0, 0%, 62%, .2);
            box-shadow: 0 2px 2px 0 rgba(0, 0, 0, .14), 0 3px 1px -2px rgba(0, 0, 0, .2), 0 1px 5px 0 rgba(0, 0, 0, .12)
        }

        .mdl-button--raised:active {
            box-shadow: 0 4px 5px 0 rgba(0, 0, 0, .14), 0 1px 10px 0 rgba(0, 0, 0, .12), 0 2px 4px -1px rgba(0, 0, 0, .2);
            background-color: hsla(0, 0%, 62%, .4)
        }

        .mdl-button--raised:focus:not(:active) {
            box-shadow: 0 0 8px rgba(0, 0, 0, .18), 0 8px 16px rgba(0, 0, 0, .36);
            background-color: hsla(0, 0%, 62%, .4)
        }

        .mdl-button--raised.mdl-button--colored {
            background: #3f51b5;
            color: #fff
        }

        .mdl-button--raised.mdl-button--colored:active,
        .mdl-button--raised.mdl-button--colored:focus:not(:active),
        .mdl-button--raised.mdl-button--colored:hover {
            background-color: #3f51b5
        }

        .mdl-button--raised.mdl-button--colored .mdl-ripple {
            background: #fff
        }

        .mdl-button--fab {
            border-radius: 50%;
            font-size: 24px;
            height: 56px;
            margin: auto;
            min-width: 56px;
            width: 56px;
            padding: 0;
            overflow: hidden;
            background: hsla(0, 0%, 62%, .2);
            box-shadow: 0 1px 1.5px 0 rgba(0, 0, 0, .12), 0 1px 1px 0 rgba(0, 0, 0, .24);
            position: relative;
            line-height: normal
        }

        .mdl-button--fab .material-icons {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-12px, -12px);
            line-height: 24px;
            width: 24px
        }

        .mdl-button--fab.mdl-button--mini-fab {
            height: 40px;
            min-width: 40px;
            width: 40px
        }

        .mdl-button--fab .mdl-button__ripple-container {
            border-radius: 50%;
            -webkit-mask-image: -webkit-radial-gradient(circle, #fff, #000)
        }

        .mdl-button--fab:active {
            box-shadow: 0 4px 5px 0 rgba(0, 0, 0, .14), 0 1px 10px 0 rgba(0, 0, 0, .12), 0 2px 4px -1px rgba(0, 0, 0, .2);
            background-color: hsla(0, 0%, 62%, .4)
        }

        .mdl-button--fab:focus:not(:active) {
            box-shadow: 0 0 8px rgba(0, 0, 0, .18), 0 8px 16px rgba(0, 0, 0, .36);
            background-color: hsla(0, 0%, 62%, .4)
        }

        .mdl-button--fab.mdl-button--colored {
            background: #ff4081;
            color: #fff
        }

        .mdl-button--fab.mdl-button--colored:active,
        .mdl-button--fab.mdl-button--colored:focus:not(:active),
        .mdl-button--fab.mdl-button--colored:hover {
            background-color: #ff4081
        }

        .mdl-button--fab.mdl-button--colored .mdl-ripple {
            background: #fff
        }

        .mdl-button--icon {
            border-radius: 50%;
            font-size: 24px;
            height: 32px;
            margin-left: 0;
            margin-right: 0;
            min-width: 32px;
            width: 32px;
            padding: 0;
            overflow: hidden;
            color: inherit;
            line-height: normal
        }

        .mdl-button--icon .material-icons {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-12px, -12px);
            line-height: 24px;
            width: 24px
        }

        .mdl-button--icon.mdl-button--mini-icon {
            height: 24px;
            min-width: 24px;
            width: 24px
        }

        .mdl-button--icon.mdl-button--mini-icon .material-icons {
            top: 0;
            left: 0
        }

        .mdl-button--icon .mdl-button__ripple-container {
            border-radius: 50%;
            -webkit-mask-image: -webkit-radial-gradient(circle, #fff, #000)
        }

        .mdl-button__ripple-container {
            display: block;
            height: 100%;
            left: 0;
            position: absolute;
            top: 0;
            width: 100%;
            z-index: 0;
            overflow: hidden
        }

        .mdl-button.mdl-button--disabled .mdl-button__ripple-container .mdl-ripple,
        .mdl-button[disabled] .mdl-button__ripple-container .mdl-ripple {
            background-color: transparent
        }

        .mdl-button--primary.mdl-button--primary {
            color: #3f51b5
        }

        .mdl-button--primary.mdl-button--primary .mdl-ripple {
            background: #fff
        }

        .mdl-button--primary.mdl-button--primary.mdl-button--fab,
        .mdl-button--primary.mdl-button--primary.mdl-button--raised {
            color: #fff;
            background-color: #3f51b5
        }

        .mdl-button--accent.mdl-button--accent {
            color: #ff4081
        }

        .mdl-button--accent.mdl-button--accent .mdl-ripple {
            background: #fff
        }

        .mdl-button--accent.mdl-button--accent.mdl-button--fab,
        .mdl-button--accent.mdl-button--accent.mdl-button--raised {
            color: #fff;
            background-color: #ff4081
        }

        .mdl-button.mdl-button--disabled.mdl-button--disabled,
        .mdl-button[disabled][disabled] {
            color: rgba(0, 0, 0, .26);
            cursor: default;
            background-color: transparent
        }

        .mdl-button--fab.mdl-button--disabled.mdl-button--disabled,
        .mdl-button--fab[disabled][disabled] {
            background-color: rgba(0, 0, 0, .12);
            color: rgba(0, 0, 0, .26)
        }

        .mdl-button--raised.mdl-button--disabled.mdl-button--disabled,
        .mdl-button--raised[disabled][disabled] {
            background-color: rgba(0, 0, 0, .12);
            color: rgba(0, 0, 0, .26);
            box-shadow: none
        }

        .mdl-button--colored.mdl-button--disabled.mdl-button--disabled,
        .mdl-button--colored[disabled][disabled] {
            color: rgba(0, 0, 0, .26)
        }

        .mdl-button .material-icons {
            vertical-align: middle
        }

        .mdl-card {
            display: flex;
            flex-direction: column;
            font-size: 16px;
            font-weight: 400;
            min-height: 200px;
            overflow: hidden;
            width: 330px;
            z-index: 1;
            position: relative;
            background: #fff;
            border-radius: 2px;
            box-sizing: border-box
        }

        .mdl-card__media {
            background-color: #ff4081;
            background-repeat: repeat;
            background-position: 50% 50%;
            background-size: cover;
            background-origin: padding-box;
            background-attachment: scroll;
            box-sizing: border-box
        }

        .mdl-card__title {
            align-items: center;
            color: #000;
            display: block;
            display: flex;
            justify-content: stretch;
            line-height: normal;
            padding: 16px;
            perspective-origin: 165px 56px;
            transform-origin: 165px 56px;
            box-sizing: border-box
        }

        .mdl-card__title.mdl-card--border {
            border-bottom: 1px solid rgba(0, 0, 0, .1)
        }

        .mdl-card__title-text {
            align-self: flex-end;
            color: inherit;
            display: block;
            display: flex;
            font-size: 24px;
            font-weight: 300;
            line-height: normal;
            overflow: hidden;
            transform-origin: 149px 48px;
            margin: 0
        }

        .mdl-card__subtitle-text {
            font-size: 14px;
            color: rgba(0, 0, 0, .54);
            margin: 0
        }

        .mdl-card__supporting-text {
            color: rgba(0, 0, 0, .54);
            font-size: 1rem;
            line-height: 18px;
            overflow: hidden;
            padding: 16px;
            width: 90%
        }

        .mdl-card__supporting-text.mdl-card--border {
            border-bottom: 1px solid rgba(0, 0, 0, .1)
        }

        .mdl-card__actions {
            font-size: 16px;
            line-height: normal;
            width: 100%;
            background-color: transparent;
            padding: 8px;
            box-sizing: border-box
        }

        .mdl-card__actions.mdl-card--border {
            border-top: 1px solid rgba(0, 0, 0, .1)
        }

        .mdl-card--expand {
            flex-grow: 1
        }

        .mdl-card__menu {
            position: absolute;
            right: 16px;
            top: 16px
        }

        .mdl-dialog {
            border: none;
            box-shadow: 0 9px 46px 8px rgba(0, 0, 0, .14), 0 11px 15px -7px rgba(0, 0, 0, .12), 0 24px 38px 3px rgba(0, 0, 0, .2);
            width: 280px
        }

        .mdl-dialog__title {
            padding: 24px 24px 0;
            margin: 0;
            font-size: 2.5rem
        }

        .mdl-dialog__actions {
            padding: 8px 8px 8px 24px;
            display: flex;
            flex-direction: row-reverse;
            flex-wrap: wrap
        }

        .mdl-dialog__actions>* {
            margin-right: 8px;
            height: 36px
        }

        .mdl-dialog__actions>:first-child {
            margin-right: 0
        }

        .mdl-dialog__actions--full-width {
            padding: 0 0 8px
        }

        .mdl-dialog__actions--full-width>* {
            height: 48px;
            flex: 0 0 100%;
            padding-right: 16px;
            margin-right: 0;
            text-align: right
        }

        .mdl-dialog__content {
            padding: 20px 24px 24px;
            color: rgba(0, 0, 0, .54)
        }

        .mdl-progress {
            display: block;
            position: relative;
            height: 4px;
            width: 500px;
            max-width: 100%
        }

        .mdl-progress>.bar {
            display: block;
            position: absolute;
            top: 0;
            bottom: 0;
            width: 0;
            transition: width .2s cubic-bezier(.4, 0, .2, 1)
        }

        .mdl-progress>.progressbar {
            background-color: #3f51b5;
            z-index: 1;
            left: 0
        }

        .mdl-progress>.bufferbar {
            background-image: linear-gradient(90deg, hsla(0, 0%, 100%, .7), hsla(0, 0%, 100%, .7)), linear-gradient(90deg, #3f51b5, #3f51b5);
            z-index: 0;
            left: 0
        }

        .mdl-progress>.auxbar {
            right: 0
        }

        @supports (-webkit-appearance:none) {

            .mdl-progress:not(.mdl-progress--indeterminate):not(.mdl-progress--indeterminate)>.auxbar,
            .mdl-progress:not(.mdl-progress__indeterminate):not(.mdl-progress__indeterminate)>.auxbar {
                background-image: linear-gradient(90deg, hsla(0, 0%, 100%, .7), hsla(0, 0%, 100%, .7)), linear-gradient(90deg, #3f51b5, #3f51b5);
                mask: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+Cjxzdmcgd2lkdGg9IjEyIiBoZWlnaHQ9IjQiIHZpZXdQb3J0PSIwIDAgMTIgNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxlbGxpcHNlIGN4PSIyIiBjeT0iMiIgcng9IjIiIHJ5PSIyIj4KICAgIDxhbmltYXRlIGF0dHJpYnV0ZU5hbWU9ImN4IiBmcm9tPSIyIiB0bz0iLTEwIiBkdXI9IjAuNnMiIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiAvPgogIDwvZWxsaXBzZT4KICA8ZWxsaXBzZSBjeD0iMTQiIGN5PSIyIiByeD0iMiIgcnk9IjIiIGNsYXNzPSJsb2FkZXIiPgogICAgPGFuaW1hdGUgYXR0cmlidXRlTmFtZT0iY3giIGZyb209IjE0IiB0bz0iMiIgZHVyPSIwLjZzIiByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgLz4KICA8L2VsbGlwc2U+Cjwvc3ZnPgo=)
            }
        }

        .mdl-progress:not(.mdl-progress--indeterminate)>.auxbar,
        .mdl-progress:not(.mdl-progress__indeterminate)>.auxbar {
            background-image: linear-gradient(90deg, hsla(0, 0%, 100%, .9), hsla(0, 0%, 100%, .9)), linear-gradient(90deg, #3f51b5, #3f51b5)
        }

        .mdl-progress.mdl-progress--indeterminate>.bar1,
        .mdl-progress.mdl-progress__indeterminate>.bar1 {
            background-color: #3f51b5;
            animation-name: indeterminate1;
            animation-duration: 2s;
            animation-iteration-count: infinite;
            animation-timing-function: linear
        }

        .mdl-progress.mdl-progress--indeterminate>.bar3,
        .mdl-progress.mdl-progress__indeterminate>.bar3 {
            background-image: none;
            background-color: #3f51b5;
            animation-name: indeterminate2;
            animation-duration: 2s;
            animation-iteration-count: infinite;
            animation-timing-function: linear
        }

        @keyframes indeterminate1 {
            0% {
                left: 0;
                width: 0
            }

            50% {
                left: 25%;
                width: 75%
            }

            75% {
                left: 100%;
                width: 0
            }
        }

        @keyframes indeterminate2 {
            0% {
                left: 0;
                width: 0
            }

            50% {
                left: 0;
                width: 0
            }

            75% {
                left: 0;
                width: 25%
            }

            to {
                left: 100%;
                width: 0
            }
        }

        .mdl-shadow--2dp {
            box-shadow: 0 2px 2px 0 rgba(0, 0, 0, .14), 0 3px 1px -2px rgba(0, 0, 0, .2), 0 1px 5px 0 rgba(0, 0, 0, .12)
        }

        .mdl-shadow--3dp {
            box-shadow: 0 3px 4px 0 rgba(0, 0, 0, .14), 0 3px 3px -2px rgba(0, 0, 0, .2), 0 1px 8px 0 rgba(0, 0, 0, .12)
        }

        .mdl-shadow--4dp {
            box-shadow: 0 4px 5px 0 rgba(0, 0, 0, .14), 0 1px 10px 0 rgba(0, 0, 0, .12), 0 2px 4px -1px rgba(0, 0, 0, .2)
        }

        .mdl-shadow--6dp {
            box-shadow: 0 6px 10px 0 rgba(0, 0, 0, .14), 0 1px 18px 0 rgba(0, 0, 0, .12), 0 3px 5px -1px rgba(0, 0, 0, .2)
        }

        .mdl-shadow--8dp {
            box-shadow: 0 8px 10px 1px rgba(0, 0, 0, .14), 0 3px 14px 2px rgba(0, 0, 0, .12), 0 5px 5px -3px rgba(0, 0, 0, .2)
        }

        .mdl-shadow--16dp {
            box-shadow: 0 16px 24px 2px rgba(0, 0, 0, .14), 0 6px 30px 5px rgba(0, 0, 0, .12), 0 8px 10px -5px rgba(0, 0, 0, .2)
        }

        .mdl-shadow--24dp {
            box-shadow: 0 9px 46px 8px rgba(0, 0, 0, .14), 0 11px 15px -7px rgba(0, 0, 0, .12), 0 24px 38px 3px rgba(0, 0, 0, .2)
        }

        .mdl-spinner {
            display: inline-block;
            position: relative;
            width: 28px;
            height: 28px
        }

        .mdl-spinner:not(.is-upgraded).is-active:after {
            content: "Loading..."
        }

        .mdl-spinner.is-upgraded.is-active {
            animation: mdl-spinner__container-rotate 1.568s linear infinite
        }

        @keyframes mdl-spinner__container-rotate {
            to {
                transform: rotate(1turn)
            }
        }

        .mdl-spinner__layer {
            position: absolute;
            width: 100%;
            height: 100%;
            opacity: 0
        }

        .mdl-spinner__layer-1 {
            border-color: #42a5f5
        }

        .mdl-spinner--single-color .mdl-spinner__layer-1 {
            border-color: #3f51b5
        }

        .mdl-spinner.is-active .mdl-spinner__layer-1 {
            animation: mdl-spinner__fill-unfill-rotate 5332ms cubic-bezier(.4, 0, .2, 1) infinite both, mdl-spinner__layer-1-fade-in-out 5332ms cubic-bezier(.4, 0, .2, 1) infinite both
        }

        .mdl-spinner__layer-2 {
            border-color: #f44336
        }

        .mdl-spinner--single-color .mdl-spinner__layer-2 {
            border-color: #3f51b5
        }

        .mdl-spinner.is-active .mdl-spinner__layer-2 {
            animation: mdl-spinner__fill-unfill-rotate 5332ms cubic-bezier(.4, 0, .2, 1) infinite both, mdl-spinner__layer-2-fade-in-out 5332ms cubic-bezier(.4, 0, .2, 1) infinite both
        }

        .mdl-spinner__layer-3 {
            border-color: #fdd835
        }

        .mdl-spinner--single-color .mdl-spinner__layer-3 {
            border-color: #3f51b5
        }

        .mdl-spinner.is-active .mdl-spinner__layer-3 {
            animation: mdl-spinner__fill-unfill-rotate 5332ms cubic-bezier(.4, 0, .2, 1) infinite both, mdl-spinner__layer-3-fade-in-out 5332ms cubic-bezier(.4, 0, .2, 1) infinite both
        }

        .mdl-spinner__layer-4 {
            border-color: #4caf50
        }

        .mdl-spinner--single-color .mdl-spinner__layer-4 {
            border-color: #3f51b5
        }

        .mdl-spinner.is-active .mdl-spinner__layer-4 {
            animation: mdl-spinner__fill-unfill-rotate 5332ms cubic-bezier(.4, 0, .2, 1) infinite both, mdl-spinner__layer-4-fade-in-out 5332ms cubic-bezier(.4, 0, .2, 1) infinite both
        }

        @keyframes mdl-spinner__fill-unfill-rotate {
            12.5% {
                transform: rotate(135deg)
            }

            25% {
                transform: rotate(270deg)
            }

            37.5% {
                transform: rotate(405deg)
            }

            50% {
                transform: rotate(540deg)
            }

            62.5% {
                transform: rotate(675deg)
            }

            75% {
                transform: rotate(810deg)
            }

            87.5% {
                transform: rotate(945deg)
            }

            to {
                transform: rotate(3turn)
            }
        }

        @keyframes mdl-spinner__layer-1-fade-in-out {
            0% {
                opacity: .99
            }

            25% {
                opacity: .99
            }

            26% {
                opacity: 0
            }

            89% {
                opacity: 0
            }

            90% {
                opacity: .99
            }

            to {
                opacity: .99
            }
        }

        @keyframes mdl-spinner__layer-2-fade-in-out {
            0% {
                opacity: 0
            }

            15% {
                opacity: 0
            }

            25% {
                opacity: .99
            }

            50% {
                opacity: .99
            }

            51% {
                opacity: 0
            }
        }

        @keyframes mdl-spinner__layer-3-fade-in-out {
            0% {
                opacity: 0
            }

            40% {
                opacity: 0
            }

            50% {
                opacity: .99
            }

            75% {
                opacity: .99
            }

            76% {
                opacity: 0
            }
        }

        @keyframes mdl-spinner__layer-4-fade-in-out {
            0% {
                opacity: 0
            }

            65% {
                opacity: 0
            }

            75% {
                opacity: .99
            }

            90% {
                opacity: .99
            }

            to {
                opacity: 0
            }
        }

        .mdl-spinner__gap-patch {
            position: absolute;
            box-sizing: border-box;
            top: 0;
            left: 45%;
            width: 10%;
            height: 100%;
            overflow: hidden;
            border-color: inherit
        }

        .mdl-spinner__gap-patch .mdl-spinner__circle {
            width: 1000%;
            left: -450%
        }

        .mdl-spinner__circle-clipper {
            display: inline-block;
            position: relative;
            width: 50%;
            height: 100%;
            overflow: hidden;
            border-color: inherit
        }

        .mdl-spinner__circle-clipper.mdl-spinner__left {
            float: left
        }

        .mdl-spinner__circle-clipper.mdl-spinner__right {
            float: right
        }

        .mdl-spinner__circle-clipper .mdl-spinner__circle {
            width: 200%
        }

        .mdl-spinner__circle {
            box-sizing: border-box;
            height: 100%;
            border-width: 3px;
            border-style: solid;
            border-color: inherit;
            border-bottom-color: transparent !important;
            border-radius: 50%;
            animation: none;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0
        }

        .mdl-spinner__left .mdl-spinner__circle {
            border-right-color: transparent !important;
            transform: rotate(129deg)
        }

        .mdl-spinner.is-active .mdl-spinner__left .mdl-spinner__circle {
            animation: mdl-spinner__left-spin 1333ms cubic-bezier(.4, 0, .2, 1) infinite both
        }

        .mdl-spinner__right .mdl-spinner__circle {
            left: -100%;
            border-left-color: transparent !important;
            transform: rotate(-129deg)
        }

        .mdl-spinner.is-active .mdl-spinner__right .mdl-spinner__circle {
            animation: mdl-spinner__right-spin 1333ms cubic-bezier(.4, 0, .2, 1) infinite both
        }

        @keyframes mdl-spinner__left-spin {
            0% {
                transform: rotate(130deg)
            }

            50% {
                transform: rotate(-5deg)
            }

            to {
                transform: rotate(130deg)
            }
        }

        @keyframes mdl-spinner__right-spin {
            0% {
                transform: rotate(-130deg)
            }

            50% {
                transform: rotate(5deg)
            }

            to {
                transform: rotate(-130deg)
            }
        }

        .mdl-textfield {
            position: relative;
            font-size: 16px;
            display: inline-block;
            box-sizing: border-box;
            width: 300px;
            max-width: 100%;
            margin: 0;
            padding: 20px 0
        }

        .mdl-textfield .mdl-button {
            position: absolute;
            bottom: 20px
        }

        .mdl-textfield--align-right {
            text-align: right
        }

        .mdl-textfield--full-width {
            width: 100%
        }

        .mdl-textfield--expandable {
            min-width: 32px;
            width: auto;
            min-height: 32px
        }

        .mdl-textfield--expandable .mdl-button--icon {
            top: 16px
        }

        .mdl-textfield__input {
            border: none;
            border-bottom: 1px solid rgba(0, 0, 0, .12);
            display: block;
            font-size: 16px;
            font-family: Helvetica, Arial, sans-serif;
            margin: 0;
            padding: 4px 0;
            width: 100%;
            background: 0 0;
            text-align: left;
            color: inherit
        }

        .mdl-textfield__input[type=number] {
            -moz-appearance: textfield
        }

        .mdl-textfield__input[type=number]::-webkit-inner-spin-button,
        .mdl-textfield__input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0
        }

        .mdl-textfield.is-focused .mdl-textfield__input {
            outline: 0
        }

        .mdl-textfield.is-invalid .mdl-textfield__input {
            border-color: #d50000;
            box-shadow: none
        }

        .mdl-textfield.is-disabled .mdl-textfield__input,
        fieldset[disabled] .mdl-textfield .mdl-textfield__input {
            background-color: transparent;
            border-bottom: 1px dotted rgba(0, 0, 0, .12);
            color: rgba(0, 0, 0, .26)
        }

        .mdl-textfield textarea.mdl-textfield__input {
            display: block
        }

        .mdl-textfield__label {
            bottom: 0;
            color: rgba(0, 0, 0, .26);
            font-size: 16px;
            left: 0;
            right: 0;
            pointer-events: none;
            position: absolute;
            display: block;
            top: 24px;
            width: 100%;
            overflow: hidden;
            white-space: nowrap;
            text-align: left
        }

        .mdl-textfield.has-placeholder .mdl-textfield__label,
        .mdl-textfield.is-dirty .mdl-textfield__label {
            visibility: hidden
        }

        .mdl-textfield--floating-label .mdl-textfield__label {
            transition-duration: .2s;
            transition-timing-function: cubic-bezier(.4, 0, .2, 1)
        }

        .mdl-textfield--floating-label.has-placeholder .mdl-textfield__label {
            transition: none
        }

        .mdl-textfield.is-disabled.is-disabled .mdl-textfield__label,
        fieldset[disabled] .mdl-textfield .mdl-textfield__label {
            color: rgba(0, 0, 0, .26)
        }

        .mdl-textfield--floating-label.has-placeholder .mdl-textfield__label,
        .mdl-textfield--floating-label.is-dirty .mdl-textfield__label,
        .mdl-textfield--floating-label.is-focused .mdl-textfield__label {
            color: #3f51b5;
            font-size: 12px;
            top: 4px;
            visibility: visible
        }

        .mdl-textfield--floating-label.has-placeholder .mdl-textfield__expandable-holder .mdl-textfield__label,
        .mdl-textfield--floating-label.is-dirty .mdl-textfield__expandable-holder .mdl-textfield__label,
        .mdl-textfield--floating-label.is-focused .mdl-textfield__expandable-holder .mdl-textfield__label {
            top: -16px
        }

        .mdl-textfield--floating-label.is-invalid .mdl-textfield__label {
            color: #d50000;
            font-size: 12px
        }

        .mdl-textfield__label:after {
            background-color: #3f51b5;
            bottom: 20px;
            content: "";
            height: 2px;
            left: 45%;
            position: absolute;
            transition-duration: .2s;
            transition-timing-function: cubic-bezier(.4, 0, .2, 1);
            visibility: hidden;
            width: 10px
        }

        .mdl-textfield.is-focused .mdl-textfield__label:after {
            left: 0;
            visibility: visible;
            width: 100%
        }

        .mdl-textfield.is-invalid .mdl-textfield__label:after {
            background-color: #d50000
        }

        .mdl-textfield__error {
            color: #d50000;
            position: absolute;
            font-size: 12px;
            margin-top: 3px;
            visibility: hidden;
            display: block
        }

        .mdl-textfield.is-invalid .mdl-textfield__error {
            visibility: visible
        }

        .mdl-textfield__expandable-holder {
            position: relative;
            margin-left: 32px;
            transition-duration: .2s;
            transition-timing-function: cubic-bezier(.4, 0, .2, 1);
            display: inline-block;
            max-width: .1px
        }

        .mdl-textfield.is-dirty .mdl-textfield__expandable-holder,
        .mdl-textfield.is-focused .mdl-textfield__expandable-holder {
            max-width: 600px
        }

        .mdl-textfield__expandable-holder .mdl-textfield__label:after {
            bottom: 0
        }

        dialog {
            position: absolute;
            left: 0;
            right: 0;
            width: -moz-fit-content;
            width: -webkit-fit-content;
            width: fit-content;
            height: -moz-fit-content;
            height: -webkit-fit-content;
            height: fit-content;
            margin: auto;
            border: solid;
            padding: 1em;
            background: #fff;
            color: #000;
            display: block
        }

        dialog:not([open]) {
            display: none
        }

        dialog+.backdrop {
            background: rgba(0, 0, 0, .1)
        }

        ._dialog_overlay,
        dialog+.backdrop {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0
        }

        dialog.fixed {
            position: fixed;
            top: 50%;
            transform: translateY(-50%)
        }

        .firebaseui-container {
            background-color: #fff;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            color: rgba(0, 0, 0, .87);
            direction: ltr;
            font: 16px Roboto, arial, sans-serif;
            margin: 0 auto;
            max-width: 360px;
            overflow: visible;
            position: relative;
            text-align: left;
            width: 100%
        }

        .firebaseui-container.mdl-card {
            overflow: visible
        }

        .firebaseui-card-header {
            padding: 24px 24px 0
        }

        .firebaseui-card-content,
        .firebaseui-card-footer {
            padding: 0 24px
        }

        .firebaseui-card-actions {
            box-sizing: border-box;
            display: table;
            font-size: 14px;
            padding: 8px 24px 24px;
            text-align: left;
            width: 100%
        }

        .firebaseui-form-links {
            display: table-cell;
            vertical-align: middle;
            width: 100%
        }

        .firebaseui-form-actions {
            display: table-cell;
            text-align: right;
            white-space: nowrap;
            width: 100%
        }

        .firebaseui-subtitle,
        .firebaseui-title {
            color: rgba(0, 0, 0, .87);
            direction: ltr;
            font-size: 20px;
            font-weight: 500;
            line-height: 24px;
            margin: 0;
            padding: 0;
            text-align: left
        }

        .firebaseui-title {
            padding-bottom: 16px
        }

        .firebaseui-subtitle {
            margin: 16px 0
        }

        .firebaseui-text {
            color: rgba(0, 0, 0, .87);
            direction: ltr;
            font-size: 16px;
            line-height: 24px;
            text-align: left
        }

        .firebaseui-id-page-password-recovery-email-sent p.firebaseui-text {
            margin: 16px 0
        }

        .firebaseui-text-emphasis {
            font-weight: 700
        }

        .firebaseui-error {
            color: #dd2c00;
            direction: ltr;
            font-size: 12px;
            line-height: 16px;
            margin: 0;
            text-align: left
        }

        .firebaseui-text-input-error {
            margin: -16px 0 16px
        }

        .firebaseui-error-wrapper {
            min-height: 16px
        }

        .firebaseui-list-item {
            direction: ltr;
            margin: 0;
            padding: 0;
            text-align: left
        }

        .firebaseui-hidden {
            display: none
        }

        .firebaseui-relative-wrapper {
            position: relative
        }

        .firebaseui-label {
            color: rgba(0, 0, 0, .54);
            direction: ltr;
            font-size: 16px;
            text-align: left
        }

        .mdl-textfield--floating-label.is-dirty .mdl-textfield__label,
        .mdl-textfield--floating-label.is-focused .mdl-textfield__label {
            color: #757575
        }

        .firebaseui-input,
        .firebaseui-input-invalid {
            border-radius: 0;
            color: rgba(0, 0, 0, .87);
            direction: ltr;
            font-size: 16px;
            width: 100%
        }

        input.firebaseui-input,
        input.firebaseui-input-invalid {
            direction: ltr;
            text-align: left
        }

        .firebaseui-input-invalid {
            border-color: #dd2c00
        }

        .firebaseui-textfield {
            width: 100%
        }

        .firebaseui-textfield.mdl-textfield .firebaseui-input {
            border-color: rgba(0, 0, 0, .12)
        }

        .firebaseui-textfield.mdl-textfield .firebaseui-label:after {
            background-color: #3f51b5
        }

        .firebaseui-textfield-invalid.mdl-textfield .firebaseui-input {
            border-color: #dd2c00
        }

        .firebaseui-textfield-invalid.mdl-textfield .firebaseui-label:after {
            background-color: #dd2c00
        }

        .firebaseui-button {
            display: inline-block;
            height: 36px;
            margin-left: 8px;
            min-width: 88px
        }

        .firebaseui-link {
            color: #4285f4;
            font-variant: normal;
            font-weight: 400;
            text-decoration: none
        }

        .firebaseui-link:hover {
            text-decoration: underline
        }

        .firebaseui-indent {
            margin-left: 1em
        }

        .firebaseui-tos {
            color: #757575;
            direction: ltr;
            font-size: 12px;
            line-height: 16px;
            margin-bottom: 24px;
            margin-top: 0;
            text-align: left
        }

        .firebaseui-provider-sign-in-footer>.firebaseui-tos {
            text-align: center
        }

        .firebaseui-tos-list {
            list-style: none;
            text-align: right
        }

        .firebaseui-inline-list-item {
            display: inline-block;
            margin-left: 5px;
            margin-right: 5px
        }

        .firebaseui-page-provider-sign-in {
            background: inherit
        }

        .firebaseui-idp-list {
            list-style: none;
            margin: 1em 0;
            padding: 0
        }

        .firebaseui-idp-button {
            direction: ltr;
            font-weight: 500;
            height: auto;
            line-height: normal;
            max-width: 220px;
            min-height: 40px;
            padding: 8px 16px;
            text-align: left;
            width: 100%
        }

        .firebaseui-idp-list>.firebaseui-list-item {
            margin-bottom: 15px;
            text-align: center
        }

        .firebaseui-idp-icon-wrapper {
            display: table-cell;
            vertical-align: middle
        }

        .firebaseui-idp-icon {
            height: 18px;
            width: 18px
        }

        .firebaseui-idp-favicon,
        .firebaseui-idp-icon {
            border: none;
            display: inline-block;
            vertical-align: middle
        }

        .firebaseui-idp-favicon {
            height: 14px;
            margin-right: 5px;
            width: 14px
        }

        .firebaseui-idp-text {
            color: #fff;
            display: table-cell;
            font-size: 14px;
            padding-left: 16px;
            text-transform: none;
            vertical-align: middle
        }

        .firebaseui-idp-text.firebaseui-idp-text-long {
            display: table-cell
        }

        .firebaseui-idp-text.firebaseui-idp-text-short {
            display: none
        }

        @media (max-width:268px) {
            .firebaseui-idp-text.firebaseui-idp-text-long {
                display: none
            }

            .firebaseui-idp-text.firebaseui-idp-text-short {
                display: table-cell
            }
        }

        @media (max-width:320px) {
            .firebaseui-recaptcha-container>div>div {
                transform: scale(.9);
                -webkit-transform: scale(.9);
                transform-origin: 0 0;
                -webkit-transform-origin: 0 0
            }
        }

        .firebaseui-idp-password,
        .firebaseui-idp-password:hover,
        .mdl-button.firebaseui-idp-password:active,
        .mdl-button.firebaseui-idp-password:focus {
            background-color: #db4437
        }

        .firebaseui-idp-phone,
        .firebaseui-idp-phone:hover,
        .mdl-button.firebaseui-idp-phone:active,
        .mdl-button.firebaseui-idp-phone:focus {
            background-color: #02bd7e
        }

        .firebaseui-idp-google,
        .firebaseui-idp-google:hover,
        .mdl-button.firebaseui-idp-google:active,
        .mdl-button.firebaseui-idp-google:focus {
            background-color: #fff
        }

        .firebaseui-idp-google>.firebaseui-idp-text {
            color: #757575
        }

        .firebaseui-idp-github,
        .firebaseui-idp-github:hover,
        .mdl-button.firebaseui-idp-github:active,
        .mdl-button.firebaseui-idp-github:focus {
            background-color: #333
        }

        .firebaseui-idp-facebook,
        .firebaseui-idp-facebook:hover,
        .mdl-button.firebaseui-idp-facebook:active,
        .mdl-button.firebaseui-idp-facebook:focus {
            background-color: #3b5998
        }

        .firebaseui-idp-twitter,
        .firebaseui-idp-twitter:hover,
        .mdl-button.firebaseui-idp-twitter:active,
        .mdl-button.firebaseui-idp-twitter:focus {
            background-color: #55acee
        }

        .firebaseui-idp-anonymous,
        .firebaseui-idp-anonymous:hover,
        .mdl-button.firebaseui-idp-anonymous:active,
        .mdl-button.firebaseui-idp-anonymous:focus {
            background-color: #f4b400
        }

        .firebaseui-info-bar {
            background-color: #f9edbe;
            border: 1px solid #f0c36d;
            box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
            -webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
            -moz-box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
            left: 10%;
            padding: 8px 16px;
            position: absolute;
            right: 10%;
            text-align: center;
            top: 0
        }

        .firebaseui-info-bar-message {
            font-size: 12px;
            margin: 0
        }

        .firebaseui-dialog {
            box-sizing: border-box;
            color: rgba(0, 0, 0, .87);
            font: 16px Roboto, arial, sans-serif;
            height: auto;
            padding: 24px;
            text-align: left
        }

        .firebaseui-dialog-icon-wrapper {
            display: table-cell;
            vertical-align: middle
        }

        .firebaseui-dialog-icon {
            float: left;
            height: 40px;
            margin-right: 24px;
            width: 40px
        }

        .firebaseui-progress-dialog-message {
            display: table-cell;
            font-size: 16px;
            font-weight: 400;
            min-height: 40px;
            vertical-align: middle
        }

        .firebaseui-progress-dialog-loading-icon {
            height: 28px;
            margin: 6px 30px 6px 6px;
            width: 28px
        }

        .firebaseui-icon-done {
            background-image: url(https://www.gstatic.com/images/icons/material/system/2x/done_googgreen_36dp.png);
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: 36px 36px
        }

        .firebaseui-phone-number {
            display: flex
        }

        .firebaseui-country-selector {
            background-image: url(https://www.gstatic.com/images/icons/material/system/1x/arrow_drop_down_grey600_18dp.png);
            background-position: 100%;
            background-repeat: no-repeat;
            background-size: 18px auto;
            border-radius: 0;
            border-bottom: 1px solid rgba(0, 0, 0, .12);
            color: rgba(0, 0, 0, .87);
            flex-shrink: 0;
            font-size: 16px;
            font-weight: 400;
            height: auto;
            line-height: normal;
            margin: 20px 24px 20px 0;
            padding: 4px 20px 4px 0;
            width: 90px
        }

        .firebaseui-country-selector-flag {
            display: inline-block;
            margin-right: 1ex
        }

        .firebaseui-flag {
            background-image: url(https://www.gstatic.com/firebasejs/ui/2.0.0/images/auth/flags_sprite_2x.png);
            background-size: 100% auto;
            filter: drop-shadow(1px 1px 1px rgba(0, 0, 0, .54));
            height: 14px;
            width: 24px
        }

        .firebaseui-list-box-dialog {
            max-height: 90%;
            overflow: auto;
            padding: 8px 0 0
        }

        .firebaseui-list-box-actions {
            padding-bottom: 8px
        }

        .firebaseui-list-box-icon-wrapper {
            padding-right: 24px
        }

        .firebaseui-list-box-icon-wrapper,
        .firebaseui-list-box-label-wrapper {
            display: table-cell;
            vertical-align: top
        }

        .firebaseui-list-box-dialog-button {
            color: rgba(0, 0, 0, .87);
            direction: ltr;
            font-size: 16px;
            font-weight: 400;
            height: auto;
            line-height: normal;
            min-height: 48px;
            padding: 14px 24px;
            text-align: left;
            text-transform: none;
            width: 100%
        }

        .firebaseui-phone-number-error {
            margin-left: 114px
        }

        .mdl-progress.firebaseui-busy-indicator {
            height: 2px;
            left: 0;
            position: absolute;
            top: 55px;
            width: 100%
        }

        .mdl-spinner.firebaseui-busy-indicator {
            height: 56px;
            left: 0;
            margin: auto;
            position: absolute;
            right: 0;
            top: 30%;
            width: 56px
        }

        .firebaseui-callback-indicator-container .firebaseui-busy-indicator {
            top: 0
        }

        .firebaseui-callback-indicator-container {
            height: 120px
        }

        .firebaseui-new-password-component {
            display: inline-block;
            position: relative;
            width: 100%
        }

        .firebaseui-input-floating-button {
            background-position: 50%;
            background-repeat: no-repeat;
            display: block;
            height: 24px;
            position: absolute;
            right: 0;
            top: 20px;
            width: 24px
        }

        .firebaseui-input-toggle-on {
            background-image: url(https://www.gstatic.com/images/icons/material/system/1x/visibility_black_24dp.png)
        }

        .firebaseui-input-toggle-off {
            background-image: url(https://www.gstatic.com/images/icons/material/system/1x/visibility_off_black_24dp.png)
        }

        .firebaseui-input-toggle-focus {
            opacity: .87
        }

        .firebaseui-input-toggle-blur {
            opacity: .38
        }

        .firebaseui-recaptcha-wrapper {
            display: table;
            margin: 0 auto;
            padding-bottom: 8px
        }

        .firebaseui-recaptcha-container {
            display: table-cell
        }

        .firebaseui-recaptcha-error-wrapper {
            caption-side: bottom;
            display: table-caption
        }

        .firebaseui-change-phone-number-link {
            display: block
        }

        .firebaseui-resend-container {
            direction: ltr;
            margin: 20px 0;
            text-align: center
        }

        .firebaseui-id-resend-countdown {
            color: rgba(0, 0, 0, .38)
        }

        .firebaseui-id-page-phone-sign-in-start .firebaseui-form-actions div {
            float: left
        }

        @media (max-width:480px) {
            .firebaseui-container {
                box-shadow: none;
                max-width: none;
                width: 100%
            }

            .firebaseui-card-header {
                border-bottom: 1px solid #e0e0e0;
                margin-bottom: 16px;
                padding: 16px 24px 0
            }

            .firebaseui-title {
                padding-bottom: 16px
            }

            .firebaseui-card-actions {
                padding-right: 24px
            }

            .firebaseui-busy-indicator {
                top: 0
            }
        }

        .mdl-textfield__label {
            font-weight: 400;
            margin-bottom: 0
        }

        .firebaseui-id-page-blank {
            background: inherit;
            height: 64px
        }

        .firebaseui-email-sent {
            background-image: url(https://www.gstatic.com/firebasejs/ui/2.0.0/images/auth/success_status.png);
            background-position: 50%;
            background-repeat: no-repeat;
            background-size: 64px 64px;
            height: 64px;
            margin-top: 16px;
            text-align: center
        }

        .firebaseui-text-justify {
            text-align: justify
        }

        .firebaseui-flag-KY {
            background-position: 0 0
        }

        .firebaseui-flag-AC {
            background-position: 0 -14px
        }

        .firebaseui-flag-AE {
            background-position: 0 -28px
        }

        .firebaseui-flag-AF {
            background-position: 0 -42px
        }

        .firebaseui-flag-AG {
            background-position: 0 -56px
        }

        .firebaseui-flag-AI {
            background-position: 0 -70px
        }

        .firebaseui-flag-AL {
            background-position: 0 -84px
        }

        .firebaseui-flag-AM {
            background-position: 0 -98px
        }

        .firebaseui-flag-AO {
            background-position: 0 -112px
        }

        .firebaseui-flag-AQ {
            background-position: 0 -126px
        }

        .firebaseui-flag-AR {
            background-position: 0 -140px
        }

        .firebaseui-flag-AS {
            background-position: 0 -154px
        }

        .firebaseui-flag-AT {
            background-position: 0 -168px
        }

        .firebaseui-flag-AU {
            background-position: 0 -182px
        }

        .firebaseui-flag-AW {
            background-position: 0 -196px
        }

        .firebaseui-flag-AX {
            background-position: 0 -210px
        }

        .firebaseui-flag-AZ {
            background-position: 0 -224px
        }

        .firebaseui-flag-BA {
            background-position: 0 -238px
        }

        .firebaseui-flag-BB {
            background-position: 0 -252px
        }

        .firebaseui-flag-BD {
            background-position: 0 -266px
        }

        .firebaseui-flag-BE {
            background-position: 0 -280px
        }

        .firebaseui-flag-BF {
            background-position: 0 -294px
        }

        .firebaseui-flag-BG {
            background-position: 0 -308px
        }

        .firebaseui-flag-BH {
            background-position: 0 -322px
        }

        .firebaseui-flag-BI {
            background-position: 0 -336px
        }

        .firebaseui-flag-BJ {
            background-position: 0 -350px
        }

        .firebaseui-flag-BL {
            background-position: 0 -364px
        }

        .firebaseui-flag-BM {
            background-position: 0 -378px
        }

        .firebaseui-flag-BN {
            background-position: 0 -392px
        }

        .firebaseui-flag-BO {
            background-position: 0 -406px
        }

        .firebaseui-flag-BQ {
            background-position: 0 -420px
        }

        .firebaseui-flag-BR {
            background-position: 0 -434px
        }

        .firebaseui-flag-BS {
            background-position: 0 -448px
        }

        .firebaseui-flag-BT {
            background-position: 0 -462px
        }

        .firebaseui-flag-BV {
            background-position: 0 -476px
        }

        .firebaseui-flag-BW {
            background-position: 0 -490px
        }

        .firebaseui-flag-BY {
            background-position: 0 -504px
        }

        .firebaseui-flag-BZ {
            background-position: 0 -518px
        }

        .firebaseui-flag-CA {
            background-position: 0 -532px
        }

        .firebaseui-flag-CC {
            background-position: 0 -546px
        }

        .firebaseui-flag-CD {
            background-position: 0 -560px
        }

        .firebaseui-flag-CF {
            background-position: 0 -574px
        }

        .firebaseui-flag-CG {
            background-position: 0 -588px
        }

        .firebaseui-flag-CH {
            background-position: 0 -602px
        }

        .firebaseui-flag-CI {
            background-position: 0 -616px
        }

        .firebaseui-flag-CK {
            background-position: 0 -630px
        }

        .firebaseui-flag-CL {
            background-position: 0 -644px
        }

        .firebaseui-flag-CM {
            background-position: 0 -658px
        }

        .firebaseui-flag-CN {
            background-position: 0 -672px
        }

        .firebaseui-flag-CO {
            background-position: 0 -686px
        }

        .firebaseui-flag-CP {
            background-position: 0 -700px
        }

        .firebaseui-flag-CR {
            background-position: 0 -714px
        }

        .firebaseui-flag-CU {
            background-position: 0 -728px
        }

        .firebaseui-flag-CV {
            background-position: 0 -742px
        }

        .firebaseui-flag-CW {
            background-position: 0 -756px
        }

        .firebaseui-flag-CX {
            background-position: 0 -770px
        }

        .firebaseui-flag-CY {
            background-position: 0 -784px
        }

        .firebaseui-flag-CZ {
            background-position: 0 -798px
        }

        .firebaseui-flag-DE {
            background-position: 0 -812px
        }

        .firebaseui-flag-DG {
            background-position: 0 -826px
        }

        .firebaseui-flag-DJ {
            background-position: 0 -840px
        }

        .firebaseui-flag-DK {
            background-position: 0 -854px
        }

        .firebaseui-flag-DM {
            background-position: 0 -868px
        }

        .firebaseui-flag-DO {
            background-position: 0 -882px
        }

        .firebaseui-flag-DZ {
            background-position: 0 -896px
        }

        .firebaseui-flag-EA {
            background-position: 0 -910px
        }

        .firebaseui-flag-EC {
            background-position: 0 -924px
        }

        .firebaseui-flag-EE {
            background-position: 0 -938px
        }

        .firebaseui-flag-EG {
            background-position: 0 -952px
        }

        .firebaseui-flag-EH {
            background-position: 0 -966px
        }

        .firebaseui-flag-ER {
            background-position: 0 -980px
        }

        .firebaseui-flag-ES {
            background-position: 0 -994px
        }

        .firebaseui-flag-ET {
            background-position: 0 -1008px
        }

        .firebaseui-flag-EU {
            background-position: 0 -1022px
        }

        .firebaseui-flag-FI {
            background-position: 0 -1036px
        }

        .firebaseui-flag-FJ {
            background-position: 0 -1050px
        }

        .firebaseui-flag-FK {
            background-position: 0 -1064px
        }

        .firebaseui-flag-FM {
            background-position: 0 -1078px
        }

        .firebaseui-flag-FO {
            background-position: 0 -1092px
        }

        .firebaseui-flag-FR {
            background-position: 0 -1106px
        }

        .firebaseui-flag-GA {
            background-position: 0 -1120px
        }

        .firebaseui-flag-GB {
            background-position: 0 -1134px
        }

        .firebaseui-flag-GD {
            background-position: 0 -1148px
        }

        .firebaseui-flag-GE {
            background-position: 0 -1162px
        }

        .firebaseui-flag-GF {
            background-position: 0 -1176px
        }

        .firebaseui-flag-GG {
            background-position: 0 -1190px
        }

        .firebaseui-flag-GH {
            background-position: 0 -1204px
        }

        .firebaseui-flag-GI {
            background-position: 0 -1218px
        }

        .firebaseui-flag-GL {
            background-position: 0 -1232px
        }

        .firebaseui-flag-GM {
            background-position: 0 -1246px
        }

        .firebaseui-flag-GN {
            background-position: 0 -1260px
        }

        .firebaseui-flag-GP {
            background-position: 0 -1274px
        }

        .firebaseui-flag-GQ {
            background-position: 0 -1288px
        }

        .firebaseui-flag-GR {
            background-position: 0 -1302px
        }

        .firebaseui-flag-GS {
            background-position: 0 -1316px
        }

        .firebaseui-flag-GT {
            background-position: 0 -1330px
        }

        .firebaseui-flag-GU {
            background-position: 0 -1344px
        }

        .firebaseui-flag-GW {
            background-position: 0 -1358px
        }

        .firebaseui-flag-GY {
            background-position: 0 -1372px
        }

        .firebaseui-flag-HK {
            background-position: 0 -1386px
        }

        .firebaseui-flag-HM {
            background-position: 0 -1400px
        }

        .firebaseui-flag-HN {
            background-position: 0 -1414px
        }

        .firebaseui-flag-HR {
            background-position: 0 -1428px
        }

        .firebaseui-flag-HT {
            background-position: 0 -1442px
        }

        .firebaseui-flag-HU {
            background-position: 0 -1456px
        }

        .firebaseui-flag-IC {
            background-position: 0 -1470px
        }

        .firebaseui-flag-ID {
            background-position: 0 -1484px
        }

        .firebaseui-flag-IE {
            background-position: 0 -1498px
        }

        .firebaseui-flag-IL {
            background-position: 0 -1512px
        }

        .firebaseui-flag-IM {
            background-position: 0 -1526px
        }

        .firebaseui-flag-IN {
            background-position: 0 -1540px
        }

        .firebaseui-flag-IO {
            background-position: 0 -1554px
        }

        .firebaseui-flag-IQ {
            background-position: 0 -1568px
        }

        .firebaseui-flag-IR {
            background-position: 0 -1582px
        }

        .firebaseui-flag-IS {
            background-position: 0 -1596px
        }

        .firebaseui-flag-IT {
            background-position: 0 -1610px
        }

        .firebaseui-flag-JE {
            background-position: 0 -1624px
        }

        .firebaseui-flag-JM {
            background-position: 0 -1638px
        }

        .firebaseui-flag-JO {
            background-position: 0 -1652px
        }

        .firebaseui-flag-JP {
            background-position: 0 -1666px
        }

        .firebaseui-flag-KE {
            background-position: 0 -1680px
        }

        .firebaseui-flag-KG {
            background-position: 0 -1694px
        }

        .firebaseui-flag-KH {
            background-position: 0 -1708px
        }

        .firebaseui-flag-KI {
            background-position: 0 -1722px
        }

        .firebaseui-flag-KM {
            background-position: 0 -1736px
        }

        .firebaseui-flag-KN {
            background-position: 0 -1750px
        }

        .firebaseui-flag-KP {
            background-position: 0 -1764px
        }

        .firebaseui-flag-KR {
            background-position: 0 -1778px
        }

        .firebaseui-flag-KW {
            background-position: 0 -1792px
        }

        .firebaseui-flag-AD {
            background-position: 0 -1806px
        }

        .firebaseui-flag-KZ {
            background-position: 0 -1820px
        }

        .firebaseui-flag-LA {
            background-position: 0 -1834px
        }

        .firebaseui-flag-LB {
            background-position: 0 -1848px
        }

        .firebaseui-flag-LC {
            background-position: 0 -1862px
        }

        .firebaseui-flag-LI {
            background-position: 0 -1876px
        }

        .firebaseui-flag-LK {
            background-position: 0 -1890px
        }

        .firebaseui-flag-LR {
            background-position: 0 -1904px
        }

        .firebaseui-flag-LS {
            background-position: 0 -1918px
        }

        .firebaseui-flag-LT {
            background-position: 0 -1932px
        }

        .firebaseui-flag-LU {
            background-position: 0 -1946px
        }

        .firebaseui-flag-LV {
            background-position: 0 -1960px
        }

        .firebaseui-flag-LY {
            background-position: 0 -1974px
        }

        .firebaseui-flag-MA {
            background-position: 0 -1988px
        }

        .firebaseui-flag-MC {
            background-position: 0 -2002px
        }

        .firebaseui-flag-MD {
            background-position: 0 -2016px
        }

        .firebaseui-flag-ME {
            background-position: 0 -2030px
        }

        .firebaseui-flag-MF {
            background-position: 0 -2044px
        }

        .firebaseui-flag-MG {
            background-position: 0 -2058px
        }

        .firebaseui-flag-MH {
            background-position: 0 -2072px
        }

        .firebaseui-flag-MK {
            background-position: 0 -2086px
        }

        .firebaseui-flag-ML {
            background-position: 0 -2100px
        }

        .firebaseui-flag-MM {
            background-position: 0 -2114px
        }

        .firebaseui-flag-MN {
            background-position: 0 -2128px
        }

        .firebaseui-flag-MO {
            background-position: 0 -2142px
        }

        .firebaseui-flag-MP {
            background-position: 0 -2156px
        }

        .firebaseui-flag-MQ {
            background-position: 0 -2170px
        }

        .firebaseui-flag-MR {
            background-position: 0 -2184px
        }

        .firebaseui-flag-MS {
            background-position: 0 -2198px
        }

        .firebaseui-flag-MT {
            background-position: 0 -2212px
        }

        .firebaseui-flag-MU {
            background-position: 0 -2226px
        }

        .firebaseui-flag-MV {
            background-position: 0 -2240px
        }

        .firebaseui-flag-MW {
            background-position: 0 -2254px
        }

        .firebaseui-flag-MX {
            background-position: 0 -2268px
        }

        .firebaseui-flag-MY {
            background-position: 0 -2282px
        }

        .firebaseui-flag-MZ {
            background-position: 0 -2296px
        }

        .firebaseui-flag-NA {
            background-position: 0 -2310px
        }

        .firebaseui-flag-NC {
            background-position: 0 -2324px
        }

        .firebaseui-flag-NE {
            background-position: 0 -2338px
        }

        .firebaseui-flag-NF {
            background-position: 0 -2352px
        }

        .firebaseui-flag-NG {
            background-position: 0 -2366px
        }

        .firebaseui-flag-NI {
            background-position: 0 -2380px
        }

        .firebaseui-flag-NL {
            background-position: 0 -2394px
        }

        .firebaseui-flag-NO {
            background-position: 0 -2408px
        }

        .firebaseui-flag-NP {
            background-position: 0 -2422px
        }

        .firebaseui-flag-NR {
            background-position: 0 -2436px
        }

        .firebaseui-flag-NU {
            background-position: 0 -2450px
        }

        .firebaseui-flag-NZ {
            background-position: 0 -2464px
        }

        .firebaseui-flag-OM {
            background-position: 0 -2478px
        }

        .firebaseui-flag-PA {
            background-position: 0 -2492px
        }

        .firebaseui-flag-PE {
            background-position: 0 -2506px
        }

        .firebaseui-flag-PF {
            background-position: 0 -2520px
        }

        .firebaseui-flag-PG {
            background-position: 0 -2534px
        }

        .firebaseui-flag-PH {
            background-position: 0 -2548px
        }

        .firebaseui-flag-PK {
            background-position: 0 -2562px
        }

        .firebaseui-flag-PL {
            background-position: 0 -2576px
        }

        .firebaseui-flag-PM {
            background-position: 0 -2590px
        }

        .firebaseui-flag-PN {
            background-position: 0 -2604px
        }

        .firebaseui-flag-PR {
            background-position: 0 -2618px
        }

        .firebaseui-flag-PS {
            background-position: 0 -2632px
        }

        .firebaseui-flag-PT {
            background-position: 0 -2646px
        }

        .firebaseui-flag-PW {
            background-position: 0 -2660px
        }

        .firebaseui-flag-PY {
            background-position: 0 -2674px
        }

        .firebaseui-flag-QA {
            background-position: 0 -2688px
        }

        .firebaseui-flag-RE {
            background-position: 0 -2702px
        }

        .firebaseui-flag-RO {
            background-position: 0 -2716px
        }

        .firebaseui-flag-RS {
            background-position: 0 -2730px
        }

        .firebaseui-flag-RU {
            background-position: 0 -2744px
        }

        .firebaseui-flag-RW {
            background-position: 0 -2758px
        }

        .firebaseui-flag-SA {
            background-position: 0 -2772px
        }

        .firebaseui-flag-SB {
            background-position: 0 -2786px
        }

        .firebaseui-flag-SC {
            background-position: 0 -2800px
        }

        .firebaseui-flag-SD {
            background-position: 0 -2814px
        }

        .firebaseui-flag-SE {
            background-position: 0 -2828px
        }

        .firebaseui-flag-SG {
            background-position: 0 -2842px
        }

        .firebaseui-flag-SH {
            background-position: 0 -2856px
        }

        .firebaseui-flag-SI {
            background-position: 0 -2870px
        }

        .firebaseui-flag-SJ {
            background-position: 0 -2884px
        }

        .firebaseui-flag-SK {
            background-position: 0 -2898px
        }

        .firebaseui-flag-SL {
            background-position: 0 -2912px
        }

        .firebaseui-flag-SM {
            background-position: 0 -2926px
        }

        .firebaseui-flag-SN {
            background-position: 0 -2940px
        }

        .firebaseui-flag-SO {
            background-position: 0 -2954px
        }

        .firebaseui-flag-SR {
            background-position: 0 -2968px
        }

        .firebaseui-flag-SS {
            background-position: 0 -2982px
        }

        .firebaseui-flag-ST {
            background-position: 0 -2996px
        }

        .firebaseui-flag-SV {
            background-position: 0 -3010px
        }

        .firebaseui-flag-SX {
            background-position: 0 -3024px
        }

        .firebaseui-flag-SY {
            background-position: 0 -3038px
        }

        .firebaseui-flag-SZ {
            background-position: 0 -3052px
        }

        .firebaseui-flag-TA {
            background-position: 0 -3066px
        }

        .firebaseui-flag-TC {
            background-position: 0 -3080px
        }

        .firebaseui-flag-TD {
            background-position: 0 -3094px
        }

        .firebaseui-flag-TF {
            background-position: 0 -3108px
        }

        .firebaseui-flag-TG {
            background-position: 0 -3122px
        }

        .firebaseui-flag-TH {
            background-position: 0 -3136px
        }

        .firebaseui-flag-TJ {
            background-position: 0 -3150px
        }

        .firebaseui-flag-TK {
            background-position: 0 -3164px
        }

        .firebaseui-flag-TL {
            background-position: 0 -3178px
        }

        .firebaseui-flag-TM {
            background-position: 0 -3192px
        }

        .firebaseui-flag-TN {
            background-position: 0 -3206px
        }

        .firebaseui-flag-TO {
            background-position: 0 -3220px
        }

        .firebaseui-flag-TR {
            background-position: 0 -3234px
        }

        .firebaseui-flag-TT {
            background-position: 0 -3248px
        }

        .firebaseui-flag-TV {
            background-position: 0 -3262px
        }

        .firebaseui-flag-TW {
            background-position: 0 -3276px
        }

        .firebaseui-flag-TZ {
            background-position: 0 -3290px
        }

        .firebaseui-flag-UA {
            background-position: 0 -3304px
        }

        .firebaseui-flag-UG {
            background-position: 0 -3318px
        }

        .firebaseui-flag-UM {
            background-position: 0 -3332px
        }

        .firebaseui-flag-UN {
            background-position: 0 -3346px
        }

        .firebaseui-flag-US {
            background-position: 0 -3360px
        }

        .firebaseui-flag-UY {
            background-position: 0 -3374px
        }

        .firebaseui-flag-UZ {
            background-position: 0 -3388px
        }

        .firebaseui-flag-VA {
            background-position: 0 -3402px
        }

        .firebaseui-flag-VC {
            background-position: 0 -3416px
        }

        .firebaseui-flag-VE {
            background-position: 0 -3430px
        }

        .firebaseui-flag-VG {
            background-position: 0 -3444px
        }

        .firebaseui-flag-VI {
            background-position: 0 -3458px
        }

        .firebaseui-flag-VN {
            background-position: 0 -3472px
        }

        .firebaseui-flag-VU {
            background-position: 0 -3486px
        }

        .firebaseui-flag-WF {
            background-position: 0 -3500px
        }

        .firebaseui-flag-WS {
            background-position: 0 -3514px
        }

        .firebaseui-flag-XK {
            background-position: 0 -3528px
        }

        .firebaseui-flag-YE {
            background-position: 0 -3542px
        }

        .firebaseui-flag-YT {
            background-position: 0 -3556px
        }

        .firebaseui-flag-ZA {
            background-position: 0 -3570px
        }

        .firebaseui-flag-ZM {
            background-position: 0 -3584px
        }

        .firebaseui-flag-ZW {
            background-position: 0 -3598px
        }
    </style>
</head>

<body><noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root">
        <div class="MuiPaper-root jss1 MuiPaper-elevation0 MuiPaper-rounded"
            style="background-color: rgb(245, 245, 245);">
            <div class="jss308">
                <div class="MuiPaper-root jss309 MuiPaper-elevation3 MuiPaper-rounded">
                    <div class="jss311">
                        TTEJO
                    </div>
                    <form class="jss312" th:action="login" method="post">
                        <input type="test" placeholder="email" value="" name="id">
                        <input type="password" placeholder="password" value="" name="password">
                        <button type="submit">Log In</button>
					</form>
                    <div class="jss313">
                        <section>
                            <div></div>
                            <p>OR</p>
                            <div></div>
                        </section>
                        <div id="firebaseui_container" lang="en">
                            <div
                                class="firebaseui-container firebaseui-page-provider-sign-in firebaseui-id-page-provider-sign-in firebaseui-use-spinner">
                                <div class="firebaseui-card-content">
                                    <form onsubmit="return false;">
                                        <ul class="firebaseui-idp-list">
                                            <li class="firebaseui-list-item"><button
                                                    class="firebaseui-idp-button mdl-button mdl-js-button mdl-button--raised firebaseui-idp-google firebaseui-id-idp-button"
                                                    data-provider-id="google.com" style="background-color:#ffffff"
                                                    data-upgraded=",MaterialButton"><span
                                                        class="firebaseui-idp-icon-wrapper"><img
                                                            class="firebaseui-idp-icon" alt=""
                                                            src="https://www.gstatic.com/firebasejs/ui/2.0.0/images/auth/google.svg"></span><span
                                                        class="firebaseui-idp-text firebaseui-idp-text-long">Sign in
                                                        with Google</span><span
                                                        class="firebaseui-idp-text firebaseui-idp-text-short">Google</span></button>
                                            </li>
                                        </ul>
                                    </form>
                                </div>
                                <div class="firebaseui-card-footer firebaseui-provider-sign-in-footer"></div>
                            </div>
                        </div>
                    </div>
                    <div class="jss314">
                        <section>
                            <div></div>
                            <p>Developer Info</p>
                            <div></div>
                        </section>
                        <div><a href="https://github.com/phanison898" rel="noreferrer nofollow" target="_blank"
                                style="color: black;"><svg class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24"
                                    aria-hidden="true">
                                    <path
                                        d="M12 .3a12 12 0 0 0-3.8 23.4c.6.1.8-.3.8-.6v-2c-3.3.7-4-1.6-4-1.6-.6-1.4-1.4-1.8-1.4-1.8-1-.7.1-.7.1-.7 1.2 0 1.9 1.2 1.9 1.2 1 1.8 2.8 1.3 3.5 1 0-.8.4-1.3.7-1.6-2.7-.3-5.5-1.3-5.5-6 0-1.2.5-2.3 1.3-3.1-.2-.4-.6-1.6 0-3.2 0 0 1-.3 3.4 1.2a11.5 11.5 0 0 1 6 0c2.3-1.5 3.3-1.2 3.3-1.2.6 1.6.2 2.8 0 3.2.9.8 1.3 1.9 1.3 3.2 0 4.6-2.8 5.6-5.5 5.9.5.4.9 1 .9 2.2v3.3c0 .3.1.7.8.6A12 12 0 0 0 12 .3">
                                    </path>
                                </svg></a><a href="https://www.linkedin.com/in/phanison225/" rel="noreferrer nofollow"
                                target="_blank" style="color: rgb(0, 87, 174);"><svg class="MuiSvgIcon-root"
                                    focusable="false" viewBox="0 0 24 24" aria-hidden="true">
                                    <path
                                        d="M19 3a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14m-.5 15.5v-5.3a3.26 3.26 0 0 0-3.26-3.26c-.85 0-1.84.52-2.32 1.3v-1.11h-2.79v8.37h2.79v-4.93c0-.77.62-1.4 1.39-1.4a1.4 1.4 0 0 1 1.4 1.4v4.93h2.79M6.88 8.56a1.68 1.68 0 0 0 1.68-1.68c0-.93-.75-1.69-1.68-1.69a1.69 1.69 0 0 0-1.69 1.69c0 .93.76 1.68 1.69 1.68m1.39 9.94v-8.37H5.5v8.37h2.77z">
                                    </path>
                                </svg></a><a href="https://www.youtube.com/channel/UC4FAldAo2Ow_2F447yggcqA"
                                rel="noreferrer nofollow" target="_blank" style="color: red;"><svg
                                    class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
                                    <path
                                        d="M10 15l5.19-3L10 9v6m11.56-7.83c.13.47.22 1.1.28 1.9.07.8.1 1.49.1 2.09L22 12c0 2.19-.16 3.8-.44 4.83-.25.9-.83 1.48-1.73 1.73-.47.13-1.33.22-2.65.28-1.3.07-2.49.1-3.59.1L12 19c-4.19 0-6.8-.16-7.83-.44-.9-.25-1.48-.83-1.73-1.73-.13-.47-.22-1.1-.28-1.9-.07-.8-.1-1.49-.1-2.09L2 12c0-2.19.16-3.8.44-4.83.25-.9.83-1.48 1.73-1.73.47-.13 1.33-.22 2.65-.28 1.3-.07 2.49-.1 3.59-.1L12 5c4.19 0 6.8.16 7.83.44.9.25 1.48.83 1.73 1.73z">
                                    </path>
                                </svg></a><a href="https://www.instagram.com/phanison225/" rel="noreferrer nofollow"
                                target="_blank" style="color: rgb(183, 6, 110);"><svg class="MuiSvgIcon-root"
                                    focusable="false" viewBox="0 0 24 24" aria-hidden="true">
                                    <path
                                        d="M7.8 2h8.4C19.4 2 22 4.6 22 7.8v8.4a5.8 5.8 0 0 1-5.8 5.8H7.8C4.6 22 2 19.4 2 16.2V7.8A5.8 5.8 0 0 1 7.8 2m-.2 2A3.6 3.6 0 0 0 4 7.6v8.8C4 18.39 5.61 20 7.6 20h8.8a3.6 3.6 0 0 0 3.6-3.6V7.6C20 5.61 18.39 4 16.4 4H7.6m9.65 1.5a1.25 1.25 0 0 1 1.25 1.25A1.25 1.25 0 0 1 17.25 8 1.25 1.25 0 0 1 16 6.75a1.25 1.25 0 0 1 1.25-1.25M12 7a5 5 0 0 1 5 5 5 5 0 0 1-5 5 5 5 0 0 1-5-5 5 5 0 0 1 5-5m0 2a3 3 0 0 0-3 3 3 3 0 0 0 3 3 3 3 0 0 0 3-3 3 3 0 0 0-3-3z">
                                    </path>
                                </svg></a><a href="https://twitter.com/phanison225" rel="noreferrer nofollow"
                                target="_blank" style="color: rgb(29, 161, 242);"><svg class="MuiSvgIcon-root"
                                    focusable="false" viewBox="0 0 24 24" aria-hidden="true">
                                    <path
                                        d="M22.46 6c-.77.35-1.6.58-2.46.69.88-.53 1.56-1.37 1.88-2.38-.83.5-1.75.85-2.72 1.05C18.37 4.5 17.26 4 16 4c-2.35 0-4.27 1.92-4.27 4.29 0 .34.04.67.11.98C8.28 9.09 5.11 7.38 3 4.79c-.37.63-.58 1.37-.58 2.15 0 1.49.75 2.81 1.91 3.56-.71 0-1.37-.2-1.95-.5v.03c0 2.08 1.48 3.82 3.44 4.21a4.22 4.22 0 0 1-1.93.07 4.28 4.28 0 0 0 4 2.98 8.521 8.521 0 0 1-5.33 1.84c-.34 0-.68-.02-1.02-.06C3.44 20.29 5.7 21 8.12 21 16 21 20.33 14.46 20.33 8.79c0-.19 0-.37-.01-.56.84-.6 1.56-1.36 2.14-2.23z">
                                    </path>
                                </svg></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>window.location.port || "object" != typeof window.__REACT_DEVTOOLS_GLOBAL_HOOK__ || (window.__REACT_DEVTOOLS_GLOBAL_HOOK__.inject = function () { })</script>
</body>

</html>