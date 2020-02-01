Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9D014FA0E
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Feb 2020 19:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RDM1k/SYEYP+A5gMqitXIXBH2Mb18yf3Bxtd42GKSqU=; b=phd+r89xsxwyQYfue9qwIV0/X
	JxZt1ZUXvT+4iPT45+3yBuJL71nwXvRpZnnJpNG2nf/UUL/q9y5NkU49SGgU/Rc1/OFFWfLyjhkXD
	LqTypBlyDDiLFw3BlWNU6zhRWA0Ijf2qssrNUoT4KFx+IYzzMLzG4sN0Lee3uF0x9f0SaAhpAKPpn
	kcj8/OBmCoMI4i0euKyY7vhJFh0pVSRkkPU40zuBxG4sT0h1TP6tyrpWxiq/7qOE84QO7v1XVSXU6
	0WGJFVX3UG4bHUMffCIvb4Y2BYwCOArmGjDfT0VfoGMVR0M0z9dUYt5wqz6XaTvnsY516VXFQE/8E
	/RNxwU/BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixxyh-00033j-Al; Sat, 01 Feb 2020 18:58:47 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixxyc-00033D-HH
 for linux-riscv@lists.infradead.org; Sat, 01 Feb 2020 18:58:45 +0000
Received: by mail-ot1-x341.google.com with SMTP id z9so9851187oth.5
 for <linux-riscv@lists.infradead.org>; Sat, 01 Feb 2020 10:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RDM1k/SYEYP+A5gMqitXIXBH2Mb18yf3Bxtd42GKSqU=;
 b=T9AB3ROc2cx0Hx4X5h27nVPkjc1knuw6YCALn2YEwpdATDLAQhpfBtLxcNFvd1CaJi
 1ShyR3+KIcx3aH5AhORuEqRo/djTIz8M3JSm465XOa5CYB2RhY1v5IHCu+icHCPYHcNS
 6e2bn2hS5JmkmZgKvgamParXsaDDKsxBYJ4f+OY+WVVyobZ2NVRGIp83qRDPVGCsIESU
 QC42ALn4JX8fGKNz05msJByzgrg8jE9+wuWraBAovf+a8eOzBgzEdJ778ghzqdH2Zst8
 CcsSXUQPO5/D7mwJGK2rCEOmWlSRNmxBKPCX6sRDuJtciRI8gu4koytbCQwr2O8q53R3
 adfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RDM1k/SYEYP+A5gMqitXIXBH2Mb18yf3Bxtd42GKSqU=;
 b=SuC0MhDSpjGtYuUZzRgk86cgd4f3u88bphXLSGK4NyiE01DT2X4dXajLxOzFBoGst2
 KrbhjDjCCMJEgC2htx1I9UPEZc+a2FVs/teMh8YkOstVPScWFLJC/0OH8rtxze0wAGtK
 bCPuiPiGwgtYkDtEjYpbAghBJQ51lToavffEODooCO7NDldgpEXiTqonh/t7GqSZiThP
 Y7Kv3ky4M97sLTrRPERbuBtjcuDdniCJaBTG3QwOWmD3dmEkLUSui81Ccu0Rttz69M2J
 +9V6SD3Sq9y6FU5ZWrrxPGz0nTkwm/K09tTniTCif6OU4gUc3o3Pv69rV3ucrIL+IhFb
 06+Q==
X-Gm-Message-State: APjAAAUmvktIaNrMrjUtF9an1hky8YIICUya+4gb1S4/eZFhBCt+tcDg
 X/VjEGCNZ5DU0Fm3tfLtZQX3MRDUTUksqg==
X-Google-Smtp-Source: APXvYqwK9vjNX0TNS9x+gUZ9vjjLaSPs++CH6qkM/Rne8CvwFk3WQbg/Wsz0JK3+CkQp3KyZYoDAoQ==
X-Received: by 2002:a9d:5e9:: with SMTP id 96mr6733537otd.307.1580583519190;
 Sat, 01 Feb 2020 10:58:39 -0800 (PST)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com.
 [209.85.210.49])
 by smtp.gmail.com with ESMTPSA id 9sm4511146otx.75.2020.02.01.10.58.38
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 01 Feb 2020 10:58:38 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id 59so9817794otp.12
 for <linux-riscv@lists.infradead.org>; Sat, 01 Feb 2020 10:58:38 -0800 (PST)
X-Received: by 2002:a05:6830:4b9:: with SMTP id
 l25mr12259649otd.266.1580583517501; 
 Sat, 01 Feb 2020 10:58:37 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
 <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
 <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
 <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
 <94ee0543-e0e6-2be4-9168-e0c8a55ca92a@williamgrant.id.au>
In-Reply-To: <94ee0543-e0e6-2be4-9168-e0c8a55ca92a@williamgrant.id.au>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Sat, 1 Feb 2020 15:58:26 -0300
X-Gmail-Original-Message-ID: <CADnnUqduWL2gMBASF=8OX8huALW9Z2tWz73kcjDK5GL+xHtsbw@mail.gmail.com>
Message-ID: <CADnnUqduWL2gMBASF=8OX8huALW9Z2tWz73kcjDK5GL+xHtsbw@mail.gmail.com>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: William Grant <me@williamgrant.id.au>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_105842_606228_5AD1E71A 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Atish Patra <atishp@atishpatra.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish, I've added that patch to latest OpenSBI from master, dd'ed
it to my mmcblk0p3 partition but still got problems building Golang
using kernel v5.5.

> export GOROOT_BOOTSTRAP=/home/carlosedp/work/go-linux-riscv64-bootstrap
> time ./make.bash
Building Go cmd/dist using
/home/carlosedp/work/go-linux-riscv64-bootstrap. (devel +a858d15f11 13
hours ago linux/riscv64)
Building Go toolchain1 using /home/carlosedp/work/go-linux-riscv64-bootstrap.
fatal error: stopTheWorld: not stopped (status != _Pgcstop)

runtime stack:
runtime.throw(0x70c63e, 0x2e)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/panic.go:1112
+0x88
runtime.stopTheWorldWithSema()
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/proc.go:971
+0x434
runtime.systemstack(0x5b368)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/asm_riscv64.s:137
+0x80
runtime.mstart()
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/proc.go:1041

goroutine 992 [running]:
runtime.systemstack_switch()
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/asm_riscv64.s:91
+0x8 fp=0x3fb4412f70 sp=0x3fb4412f68 pc=0x909e0
runtime.gcStart(0x0, 0x0, 0x3f00000000)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/mgc.go:1306
+0x2f0 fp=0x3fb4412ff8 sp=0x3fb4412f70 pc=0x33628
runtime.mallocgc(0x40, 0x6367a0, 0x95c78001, 0xeecc28cbf77b49aa)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/malloc.go:1128
+0x4c8 fp=0x3fb4413098 sp=0x3fb4412ff8 pc=0x1e680
runtime.makeslice(0x6367a0, 0x0, 0x40, 0x73d1d8)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/slice.go:49
+0x94 fp=0x3fb44130c0 sp=0x3fb4413098 pc=0x74c2c
strings.(*Builder).grow(...)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/strings/builder.go:68
strings.(*Builder).Grow(...)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/strings/builder.go:82
strings.Join(0x3fb4413200, 0x2, 0x2, 0x6f0656, 0x1, 0x6dc940, 0x3fdd96ee98)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/strings/strings.go:438
+0x460 fp=0x3fb4413190 sp=0x3fb44130c0 pc=0x136fd8
path/filepath.join(0x3fb4413200, 0x2, 0x2, 0x100, 0x50edec)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/path/filepath/path_unix.go:45
+0xe8 fp=0x3fb44131d0 sp=0x3fb4413190 pc=0x145870
path/filepath.Join(...)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/path/filepath/path.go:212
cmd/go/internal/work.mkAbs(0x3fb4554900, 0x38, 0x3fb4404939, 0x7, 0x1,
0x3fb41e6c28)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:2037
+0xb0 fp=0x3fb4413220 sp=0x3fb44131d0 pc=0x502bd8
cmd/go/internal/work.gcToolchain.gc(0x3fb44bfd60, 0x3fb433fcc0,
0x3fb42eee40, 0x23, 0x3fb41201c0, 0xc2, 0x1b8, 0x0, 0x0, 0x3fb42eee00,
...)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/gc.go:139
+0xdd4 fp=0x3fb4413478 sp=0x3fb4413220 pc=0x50ebc4
cmd/go/internal/work.(*gcToolchain).gc(0xbbad10, 0x3fb44bfd60,
0x3fb433fcc0, 0x3fb42eee40, 0x23, 0x3fb41201c0, 0xc2, 0x1b8, 0x0, 0x0,
...)
    <autogenerated>:1 +0xb4 fp=0x3fb4413520 sp=0x3fb4413478 pc=0x5300ac
cmd/go/internal/work.(*Builder).build(0x3fb44bfd60, 0x3fb433fcc0, 0x0, 0x0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:678
+0x169c fp=0x3fb4413e00 sp=0x3fb4413520 pc=0x4f2054
cmd/go/internal/work.(*Builder).Do.func2(0x3fb433fcc0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:118
+0x7c fp=0x3fb4413ed8 sp=0x3fb4413e00 pc=0x52944c
cmd/go/internal/work.(*Builder).Do.func3(0x3fb44a8930, 0x3fb44bfd60,
0x3fb43fe7c0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:178
+0x88 fp=0x3fb4413fc0 sp=0x3fb4413ed8 pc=0x529860
runtime.goexit()
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/asm_riscv64.s:451
+0x4 fp=0x3fb4413fc0 sp=0x3fb4413fc0 pc=0x929e4
created by cmd/go/internal/work.(*Builder).Do
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:165
+0x2d8

goroutine 1 [semacquire]:
sync.runtime_Semacquire(0x3fb44a8938)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/runtime/sema.go:56
+0x4c
sync.(*WaitGroup).Wait(0x3fb44a8930)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/sync/waitgroup.go:130
+0xd4
cmd/go/internal/work.(*Builder).Do(0x3fb44bfd60, 0x3fb438b7c0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:187
+0x300
cmd/go/internal/work.InstallPackages(0x3fb409a090, 0x1, 0x1,
0x3fb40a6e00, 0x3a, 0x40)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/build.go:605
+0x4ac
cmd/go/internal/work.runInstall(0xb87580, 0x3fb409a090, 0x1, 0x1)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/build.go:516
+0x74
main.main()
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/main.go:189
+0x930

goroutine 1121 [select]:
cmd/go/internal/work.(*Builder).Do.func3(0x3fb44a8930, 0x3fb44bfd60,
0x3fb43fe7c0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:168
+0xec
created by cmd/go/internal/work.(*Builder).Do
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:165
+0x2d8

goroutine 991 [select]:
cmd/go/internal/work.(*Builder).Do.func3(0x3fb44a8930, 0x3fb44bfd60,
0x3fb43fe7c0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:168
+0xec
created by cmd/go/internal/work.(*Builder).Do
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:165
+0x2d8

goroutine 990 [runnable]:
syscall.Syscall(0x39, 0xa, 0x0, 0x0, 0x0, 0x0, 0x0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/syscall/asm_linux_riscv64.s:13
+0x14
syscall.Close(0xa, 0x3fb42c2980, 0x10)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/syscall/zsyscall_linux_riscv64.go:285
+0x48
syscall.forkExec(0x3fb42da0a0, 0x4a, 0x3fb42b8a50, 0xf, 0xf,
0x3fb4622ef0, 0xa632444f00010400, 0x3fb4445000, 0x0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/syscall/exec_unix.go:209
+0x348
syscall.StartProcess(...)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/syscall/exec_unix.go:248
os.startProcess(0x3fb42da0a0, 0x4a, 0x3fb42b8a50, 0xf, 0xf,
0x3fb4623088, 0x0, 0x0, 0x0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/os/exec_posix.go:52
+0x1c8
os.StartProcess(0x3fb42da0a0, 0x4a, 0x3fb42b8a50, 0xf, 0xf,
0x3fb4623088, 0x51, 0x0, 0x0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/os/exec.go:102
+0x78
os/exec.(*Cmd).Start(0x3fb42f49a0, 0x3f2d304c58, 0x3d5b8007a8)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/os/exec/exec.go:417
+0x3a4
os/exec.(*Cmd).Run(0x3fb42f49a0, 0x4af513a7c, 0xb91900)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/os/exec/exec.go:337
+0x34
cmd/go/internal/work.(*Builder).runOut(0x3fb44bfd60, 0x3fb433e3c0,
0x3fb41d8460, 0x48, 0x0, 0x0, 0x0, 0x3fb41c6c40, 0x12, 0x1c, ...)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:1928
+0x5bc
cmd/go/internal/work.(*Builder).run(0x3fb44bfd60, 0x3fb433e3c0,
0x3fb41d8460, 0x48, 0x3fb43011e1, 0x14, 0x0, 0x0, 0x0, 0x3fb41c6c40,
...)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:1853
+0x80
cmd/go/internal/work.gcToolchain.symabis.func1(0x3fb44e8900,
0x3fb42a6ed0, 0x1, 0x1, 0x3fb43b1080, 0x23, 0x23, 0x428902ca6305f6ce)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/gc.go:299
+0x2e8
cmd/go/internal/work.gcToolchain.symabis(0x3fb44bfd60, 0x3fb433e3c0,
0x3fb42a6ed0, 0x1, 0x1, 0x2a, 0x40, 0x0, 0x0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/gc.go:306
+0x114
cmd/go/internal/work.(*Builder).build(0x3fb44bfd60, 0x3fb433e3c0, 0x0, 0x0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:642
+0x1208
cmd/go/internal/work.(*Builder).Do.func2(0x3fb433e3c0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:118
+0x7c
cmd/go/internal/work.(*Builder).Do.func3(0x3fb44a8930, 0x3fb44bfd60,
0x3fb43fe7c0)
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:178
+0x88
created by cmd/go/internal/work.(*Builder).Do
    /Users/cdepaula/repos/golang.org/go-linux-riscv64-bootstrap/src/cmd/go/internal/work/exec.go:165
+0x2d8
go tool dist: FAILED:
/home/carlosedp/work/go-linux-riscv64-bootstrap/bin/go install
-gcflags=-l -tags=math_big_pure_go compiler_bootstrap
bootstrap/cmd/...: exit status 2
./make.bash  40.73s user 5.54s system 80% cpu 57.384 total

Did it worked for you William?

Carlos

On Sat, Feb 1, 2020 at 2:08 AM William Grant <me@williamgrant.id.au> wrote:
>
> On 1/2/20 3:58 pm, Atish Patra wrote:
> > On Fri, Jan 31, 2020 at 8:32 AM Carlos Eduardo de Paula
> > <me@carlosedp.com> wrote:
> >>
> >> Updating this issue, I've built the same Golang tree (master) on Qemu
> >> using the same kernel Image v5.5.0 I have on Unleashed and it built
> >> successfully:
> >>
> >> root@qemuriscv:~/go/src# time ./make.bash
> >> Building Go cmd/dist using /root/go-linux-riscv64-bootstrap. (devel
> >> +a858d15f11 13 hours ago linux/riscv64)
> >> Building Go toolchain1 using /root/go-linux-riscv64-bootstrap.
> >> Building Go bootstrap cmd/go (go_bootstrap) using Go toolchain1.
> >> Building Go toolchain2 using go_bootstrap and Go toolchain1.
> >> Building Go toolchain3 using go_bootstrap and Go toolchain2.
> >> Building packages and commands for linux/riscv64.
> >> ---
> >> Installed Go for linux/riscv64 in /root/go
> >> Installed commands in /root/go/bin
> >>
> >> real    43m19.946s
> >> user    120m34.147s
> >> sys    66m34.964s
> >> Linux qemuriscv 5.5.0-dirty #3 SMP Fri Jan 31 00:13:59 -02 2020
> >> riscv64 GNU/Linux
> >> root@qemuriscv:~/go/src# ../bin/go version
> >> go version devel +6e592c2 Fri Jan 31 14:46:05 2020 +0000 linux/riscv64
> >>
> >>
> >> Also tried updating to latest opensbi commit as of today and still
> >> seeing same error on Unleashed.
> >>
> >>
> >
> > Resending it as 1st one did not seem to go through for some reason
> >
> > You might be hitting the tlb flushing hardware errata on unleashed.
> > IIRC, anything other than full tlb flush
> > is broken on unleashed. I don't have the exact errata number or a link
> > that I can point to. May be Paul or somebody else from sifive
> > can share that so that we can document it as well.
> >
> > Can you try this patch in OpenSBI? This forces OpenSBI to do a full
> > flush every time for HiFive Unleashed.
>
> I've separately been trying to track this down for a couple of days, and
> indeed, adjusting OpenSBI to always do a full flush is the easiest
> workaround. I haven't seen any public reference to TLB errata on the
> SoC, but it would explain a lot.
>
> For now I've found that existing kernels with OpenSBI patched to always
> do a full flush, or kernels patched to do a full flush at the end of
> wp_page_copy, get Go building stably. I don't know if there's something
> special about wp_page_copy that tickles the bug, or if it's just called
> often enough that it papers over incomplete flushes elsewhere.
>
> > diff --git a/platform/sifive/fu540/platform.c b/platform/sifive/fu540/platform.c
> > index c8ead9dede23..e36338d2903f 100644
> > --- a/platform/sifive/fu540/platform.c
> > +++ b/platform/sifive/fu540/platform.c
> > @@ -218,5 +218,6 @@ const struct sbi_platform platform = {
> >         .hart_count             = FU540_HART_COUNT,
> >         .hart_stack_size        = FU540_HART_STACK_SIZE,
> >         .disabled_hart_mask     = FU540_HARITD_DISABLED,
> > +       .tlb_range_flush_limit  = 0,
> >         .platform_ops_addr      = (unsigned long)&platform_ops
> >  };
> >
> >> On Fri, Jan 31, 2020 at 11:20 AM Carlos Eduardo de Paula
> >> <me@carlosedp.com> wrote:
> >>>
> >>> My board is running:
> >>>
> >>> SiFive FSBL:       2018-03-20
> >>> OpenSBI v0.5-44-g049ad0b
> >>> U-Boot 2020.01-dirty (Jan 08 2020 - 18:05:52 -0200)
> >>>
> >>> All build on january 8 using the guide I've wrote here
> >>> (https://github.com/carlosedp/riscv-bringup/tree/master/unleashed)
> >>> after our talks.
> >>>
> >>> Haven't tested newer versions on Qemu, might build it to give a try. I
> >>> have v5.4-rc3 built for Qemu and it works fine.
> >>>
> >>> Carlos
> >>>
> >>> On Fri, Jan 31, 2020 at 10:32 AM David Abdurachmanov
> >>> <david.abdurachmanov@gmail.com> wrote:
> >>>>
> >>>> On Fri, Jan 31, 2020 at 2:14 PM Carlos Eduardo de Paula
> >>>> <me@carlosedp.com> wrote:
> >>>>>
> >>>>> Golang has been recently upstreamed and I've been building multiple
> >>>>> versions on my Unleashed board successfully with kernel 5.3-rc4 and
> >>>>> previous.
> >>>>>
> >>>>> I noticed that after I updated my Kernel from v5.3-rc4 to v5.5-rc5,
> >>>>> Golang doesn't build anymore failing on multiple points and
> >>>>> segfaulting as well.
> >>>>
> >>>> Could you also mention what version of OpenSBI you use?
> >>>> Does it also fail on QEMU (avoid 4.2.0) or only on Unleashed?
> >>>>
> >>>>>
> >>>>> I've captured a few logs with the error building here:
> >>>>>
> >>>>> I've bisected the versions between v5.4-rc3 and v5.4 and it pointed
> >>>>> out that the commit below is the starting point.
> >>>>>
> >>>>> eb93685847a9055283d05951c1b205e737f38533 is the first bad commit
> >>>>> commit eb93685847a9055283d05951c1b205e737f38533
> >>>>> Author: Paul Walmsley <paul.walmsley@sifive.com>
> >>>>> Date: Wed Aug 7 19:07:34 2019 -0700
> >>>>>
> >>>>> riscv: fix flush_tlb_range() end address for flush_tlb_page()
> >>>>>
> >>>>> The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SMP
> >>>>> is set is wrong. It passes zero to flush_tlb_range() as the final
> >>>>> address to flush, but it should be at least 'addr'.
> >>>>>
> >>>>> Some other Linux architecture ports use the beginning address to
> >>>>> flush, plus PAGE_SIZE, as the final address to flush. This might
> >>>>> flush slightly more than what's needed, but it seems unlikely that
> >>>>> being more clever would improve anything. So let's just take that
> >>>>> implementation for now.
> >>>>>
> >>>>> While here, convert the macro into a static inline function, primarily
> >>>>> to avoid unintentional multiple evaluations of 'addr'.
> >>>>>
> >>>>> This second version of the patch fixes a coding style issue found by
> >>>>> Christoph Hellwig <hch@lst.de>.
> >>>>>
> >>>>> Reported-by: Andreas Schwab <schwab@suse.de>
> >>>>> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> >>>>> Reviewed-by: Christoph Hellwig <hch@lst.de>
> >>>>>
> >>>>> :040000 040000 1a4ee20b3614c93de2a925bba2df6f2e1518f227
> >>>>> 6b4ffd3e1a2245912cf734a8a3f61db7eb0ccd67 M arch
> >>>>>
> >>>>>> git bisect visualize
> >>>>> eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> >>>>> for flush_tlb_page() HEAD, refs/bisect/bad
> >>>>>
> >>>>>
> >>>>>> git diff eb93685^!
> >>>>>
> >>>>> ```diff
> >>>>> diff --git a/arch/riscv/include/asm/tlbflush.h
> >>>>> b/arch/riscv/include/asm/tlbflush.h
> >>>>> index 687dd19..4d9bbe8 100644
> >>>>> --- a/arch/riscv/include/asm/tlbflush.h
> >>>>> +++ b/arch/riscv/include/asm/tlbflush.h
> >>>>> @@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct
> >>>>> cpumask *cmask, unsigned long start,
> >>>>> }
> >>>>>
> >>>>> #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> >>>>> -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> >>>>> +
> >>>>> #define flush_tlb_range(vma, start, end) \
> >>>>> remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> >>>>> -#define flush_tlb_mm(mm) \
> >>>>> +
> >>>>> +static inline void flush_tlb_page(struct vm_area_struct *vma,
> >>>>> + unsigned long addr)
> >>>>> +{
> >>>>> + flush_tlb_range(vma, addr, addr + PAGE_SIZE);
> >>>>> +}
> >>>>> +
> >>>>> +#define flush_tlb_mm(mm) \
> >>>>> remote_sfence_vma(mm_cpumask(mm), 0, -1)
> >>>>>
> >>>>> #endif /* CONFIG_SMP */
> >>>>> ```
> >>>>>
> >>>>> I was not able to revert this change from recent v5.5.0 so I don't
> >>>>> know if this is the problem or some close commits:
> >>>>>
> >>>>>> git log 2b245b8b..2f478b60 |grep riscv
> >>>>> 2f478b6 N 6 months ago Linus..Merge tag 'riscv/for-v5.3-rc5' of
> >>>>> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> >>>>> 69703eb N 6 months ago Vince..riscv: Make __fstate_clean() work correctly.
> >>>>> 8ac71d7 N 6 months ago Vince..riscv: Correct the initialized flow of FP register
> >>>>> eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> >>>>> for flush_tlb_page()
> >>>>>
> >>>>> Carlos
> >>>>> --
> >>>>> ________________________________________
> >>>>> Carlos Eduardo de Paula
> >>>>> me@carlosedp.com
> >>>>> http://carlosedp.com
> >>>>> http://twitter.com/carlosedp
> >>>>> Linkedin
> >>>>> ________________________________________
> >>>>>
> >>>>
> >>>
> >>>
> >>> --
> >>> ________________________________________
> >>> Carlos Eduardo de Paula
> >>> me@carlosedp.com
> >>> http://carlosedp.com
> >>> http://twitter.com/carlosedp
> >>> Linkedin
> >>> ________________________________________
> >>
> >>
> >>
> >> --
> >> ________________________________________
> >> Carlos Eduardo de Paula
> >> me@carlosedp.com
> >> http://carlosedp.com
> >> http://twitter.com/carlosedp
> >> Linkedin
> >> ________________________________________
> >>
> >
> >
>
>


-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

