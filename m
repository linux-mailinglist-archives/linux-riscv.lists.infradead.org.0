Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D87A161354
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 14:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=32QeKQkm7uKmVGqV98zTJsQX9krUXxykSek3IL+PWAg=; b=O0E5MCxcGWMvwcaS/6mmT+FQ9
	6D1aqnlURCJnRtYx/5BogIkw4E1TrN1yD/8edkw4bGI7W5/D+LWPFUSH8BCCJpYlzC5BjJyLT99yp
	lk6BYj1Ifn5eY6ORVo1ybPzDzgHZRIop7xGfrYUHJAMdvi7KPtLGRKfLOkYI665DY4Mw/ll361i12
	agf90XBf6k2gfXCXWeEZdn4NPPYfmLPFYASPMvNyzvc4AnweW2CCNvcKdhNMvp3ls4sphNn2WgUdg
	JEUPCHN+EbVSUV06WajERXfnnVUTuyL5UqcrgLwUgnvZ8fO8EAS03O3YyZzvdoIzoiOfgZSCc4viy
	8tVoazOYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gRq-0005RV-AE; Mon, 17 Feb 2020 13:28:30 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gRj-0005Qg-Fn
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 13:28:27 +0000
Received: by mail-ot1-x342.google.com with SMTP id w6so6865574otk.0
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 05:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=32QeKQkm7uKmVGqV98zTJsQX9krUXxykSek3IL+PWAg=;
 b=UT4eiZ+zB4xQ2jSMK5o8Gy/dr7d8AOs3MJMCxj0qTf3gK4TGLYeiXt+20CZVh9gdgG
 xFyDUu3R/5KIB+Dm4KDCYSFC52WKZCN6kedMukhwwBvoN/60J5IHwsKCk/60GAJ9gdcl
 qWFuyLjSgDdAjo18Zqe7LFy8D2k6zPaU+0BIJ/k5a303l+BZexhXOr90u/fNIiHiJUWO
 WwkWe0xPt+PvyaCMPAT96/g0zC10xA5ntlFCzh27VZtHj+cgvQa5hD1vz5t/60tPNLYe
 PblNc9do6AX9hqyhM7KwzLpEHR2XdSLkRjAs137EWoyPegukvhxEO6OA9MGd+3mZkvxD
 1SJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=32QeKQkm7uKmVGqV98zTJsQX9krUXxykSek3IL+PWAg=;
 b=GvNEIySTbwxoYTPuDpVPNe8+tw/b9zaGThJIJjmcRiSCWNLRynXXd1t/Lkh/r/eATD
 2FxbUUB1PGEsZbGDf/Bs60t6oTP2mqGhxtwYaqOr5JURXyPsnyLTQarsjVg+M6om1Soy
 Ftd2uR6ALSRdI7+p+Yb+vaaYOMSiB3em5sspTZw+cNFSWwZLtYfBJxPFpopeIUgxrHcZ
 SDTuhmJtorBv4IXkcEq7djwQiP5w8f7V7cAfJocfbhQzEcW3LzqoeGH/eMpfvgchZ2Ay
 vAaMcSoO3vchhgh+EdT62xfgBqbXo2R/eWfccjWT5lvxpMteejBSitKpwPIXaRmjG4FP
 Q7Sw==
X-Gm-Message-State: APjAAAVealKgZ3WuuD+0HwSuU0MZkQ1OciCr2OvBJ7YBBd1T/zW87bQY
 +6+agajARxQRryma0E+hNrBFWJ+mOsNwjg==
X-Google-Smtp-Source: APXvYqxE1AJEklfJsjuR4qAWPn8PZF24p8RV4m+Cue1mclXuCDuEaCIOQB1W5WYPYH2CWmbJzQVzhw==
X-Received: by 2002:a9d:7305:: with SMTP id e5mr11560846otk.64.1581946101393; 
 Mon, 17 Feb 2020 05:28:21 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com.
 [209.85.210.47])
 by smtp.gmail.com with ESMTPSA id r13sm121573oic.52.2020.02.17.05.28.20
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Feb 2020 05:28:20 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id g64so16021856otb.13
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 05:28:20 -0800 (PST)
X-Received: by 2002:a05:6830:1498:: with SMTP id
 s24mr12970150otq.79.1581946099865; 
 Mon, 17 Feb 2020 05:28:19 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <CADnnUqcFbmspQ0fcggoyPTE4mckoGahHmaNdcJeC7GJD7C16uA@mail.gmail.com>
 <BYAPR04MB5816C1EADCEF92F1F1DE60E0E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5816C1EADCEF92F1F1DE60E0E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Mon, 17 Feb 2020 10:28:08 -0300
X-Gmail-Original-Message-ID: <CADnnUqeWqL4+_ZTKBWW_wh=pqOn1DdgOr=P3iw4hJzEjYCxCeA@mail.gmail.com>
Message-ID: <CADnnUqeWqL4+_ZTKBWW_wh=pqOn1DdgOr=P3iw4hJzEjYCxCeA@mail.gmail.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_052823_588061_D56C0ABE 
X-CRM114-Status: GOOD (  27.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Damien, thanks for pointing this out. I've created the directory
structure and their permissions and was able to build a custom
busybox. I'll now check on how to use the buildroot generated cpio on
it.

On Fri, Feb 14, 2020 at 11:02 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On 2020/02/15 0:06, Carlos Eduardo de Paula wrote:
> > Hi Damien, I've tested the patches on v5.5.0 and it boots perfectly on
> > my MaixGo board. I used the provided initramfs.cpio as the payload and
> > got to the busybox prompt.
>
> Great !
>
> >
> > While trying to build my own busybox, I got a few problems. I've
> > checked-out your tree and copied the toolchain. Then when building
> > busybox with your minimal config, I got this error:
> >
> >   LINK    busybox_unstripped
> > Your linker does not support --sort-section,alignment
> > Your linker does not support --sort-common
> > Your linker does not support -Wl,--gc-sections
> > Trying libraries: m rt
> > Failed: -Wl,--start-group  -lm -lrt  -Wl,--end-group
> > Output of:
> > /opt/riscv64-uclibc/bin/riscv64-linux-gcc -Wall -Wshadow
> > -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused
> > -Wunused-parameter -Wunused-function -Wunused-value
> > -Wmissing-prototypes -Wmissing-declarations -Wno-format-security
> > -Wdeclaration-after-statement -Wold-style-definition -finline-limit=0
> > -fno-builtin-strlen -fomit-frame-pointer -ffunction-sections
> > -fdata-sections -fno-guess-branch-probability -funsigned-char
> > -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1
> > -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables
> > -fno-builtin-printf -Wno-string-plus-int -Wno-constant-logical-operand
> > -Os -Os -fPIC --sysroot=/opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/sysroot/
> > -static -Os -static -Wl,-elf2flt=-r -o busybox_unstripped
> > -Wl,--start-group applets/built-in.o archival/lib.a
> > archival/libarchive/lib.a console-tools/lib.a coreutils/lib.a
> > coreutils/libcoreutils/lib.a debianutils/lib.a klibc-utils/lib.a
> > e2fsprogs/lib.a editors/lib.a findutils/lib.a init/lib.a libbb/lib.a
> > libpwdgrp/lib.a loginutils/lib.a mailutils/lib.a miscutils/lib.a
> > modutils/lib.a networking/lib.a networking/libiproute/lib.a
> > networking/udhcp/lib.a printutils/lib.a procps/lib.a runit/lib.a
> > selinux/lib.a shell/lib.a sysklogd/lib.a util-linux/lib.a
> > util-linux/volume_id/lib.a archival/built-in.o
> > archival/libarchive/built-in.o console-tools/built-in.o
> > coreutils/built-in.o coreutils/libcoreutils/built-in.o
> > debianutils/built-in.o klibc-utils/built-in.o e2fsprogs/built-in.o
> > editors/built-in.o findutils/built-in.o init/built-in.o
> > libbb/built-in.o libpwdgrp/built-in.o loginutils/built-in.o
> > mailutils/built-in.o miscutils/built-in.o modutils/built-in.o
> > networking/built-in.o networking/libiproute/built-in.o
> > networking/udhcp/built-in.o printutils/built-in.o procps/built-in.o
> > runit/built-in.o selinux/built-in.o shell/built-in.o
> > sysklogd/built-in.o util-linux/built-in.o
> > util-linux/volume_id/built-in.o -Wl,--end-group -Wl,--start-group -lm
> > -lrt -Wl,--end-group
> > ==========
> > /opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot
> > find crt1.o: No such file or directory
> > /opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot
> > find crti.o: No such file or directory
> > /opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot
> > find crtbeginT.o: No such file or directory
> > collect2: error: ld returned 1 exit status
> > Note: if build needs additional libraries, put them in CONFIG_EXTRA_LDLIBS.
> > Example: CONFIG_EXTRA_LDLIBS="pthread dl tirpc audit pam"
> > make: *** [Makefile:718: busybox_unstripped] Error 1
>
> Weird... librt is not needed normally and is actually not generated by the
> toolchain due to the absence of native thread support I think. Maybe it was
> needed due to some option selection in busybox you did ?
>
> > Then I've built the complete buildroot toolchain and replaced it on /opt.
> >
> > Then I've proceeded to "make SKIP_STRIP=y" and "make install" and it
> > built fine. I got into _install dir and ran: "find . | sudo cpio -H
> > newc --create --verbose > ../k210.cpio" to generate the cpio. All this
> > with the
> >
> > Rebuilt the kernel with it but when booting, I got this error:
> >
> > [    0.259289] Run /sbin/init as init process
> > [    0.263480] Run /etc/init as init process
> > [    0.267453] Run /bin/init as init process
> > [    0.286973] Kernel panic - not syncing: Attempted to kill init!
> > exitcode=0x00000000
> > [    0.293869] CPU: 1 PID: 1 Comm: sh Not tainted 5.5.0-dirty #19
> > [    0.299673] Call Trace:
> > [    0.302109] [<00000000800401f6>] 0x00000000800401f6
> > [    0.306969] [<000000008004033a>] 0x000000008004033a
> > [    0.311831] [<0000000080111abe>] 0x0000000080111abe
> > [    0.316693] [<000000008004340e>] 0x000000008004340e
> > [    0.321556] [<0000000080045402>] 0x0000000080045402
> > [    0.326417] [<0000000080045898>] 0x0000000080045898
> > [    0.331279] [<000000008003f1d2>] 0x000000008003f1d2
> > [    0.336142] SMP: stopping secondary CPUs
> > [    0.340065] ---[ end Kernel panic - not syncing: Attempted to kill
> > init! exitcode=0x00000000 ]---
>
> The busybox _install directory is not enough on its own to become an
> initramfs tree. You need to add some stuff to it. I use the following
> script to build a simple one with _install as a base:
>
> #!/bin/bash
>
> if [ $# != 2 ]; then
>         echo "Usage: $0 <busybox install dir> <cpio img path>"
>         exit 1
> fi
>
> # Prepare
> cd $1
> mkdir dev sys proc tmp root etc
> mkdir dev/pts dev/shm
>
> cd dev
> sudo mknod -m 622 console c 5 1
> sudo mknod -m 666 null c 1 3
> sudo mknod -m 666 zero c 1 5
> sudo mknod -m 666 ptmx c 5 2
> sudo mknod -m 666 tty c 5 0
> sudo mknod -m 444 random c 1 8
> sudo mknod -m 444 urandom c 1 9
> sudo mknod -m 666 ttySIF0 c 4 64
> sudo mknod -m 666 tty0 c 4 0
> sudo chown root:tty {console,ptmx,tty}
> cd ..
>
> # Create image file
> echo "Creating cpio image"
>
> find . | cpio -H newc -o > $2
>
> >
> > I also tried with a gzipped cpio but got the "Kernel panic - not
> > syncing: no cpio magic" error.
> >
> > What's the right way to create the cpio initramfs? I want to customize
> > it a little.
>
> You also need to copy an init script under /bin or /sbin in the _install
> directory before running the above script. The one with the precompiled
> image I wrote is simply:
>
> #!/bin/sh
>
> echo ""
> echo "-----------------------------"
> echo "| Kendryte K210 NOMMU Linux |"
> echo "-----------------------------"
>
> echo "Mounting /proc"
> mount -t proc proc /proc
>
> echo "Starting shell"
> exec /bin/sh
>
>
> At least for the config I use with busybox, I do not get one automatically.
> I tend to not use the default busybox init stuff to keep control over what
> is done and keep things small overall. But since things are now starting to
> work well, we can start experimenting other configs for busybox (e.g. a
> more complete one).
>
> Cheers.
>
> >
> > Thanks.
> >
>
>
> --
> Damien Le Moal
> Western Digital Research



-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

