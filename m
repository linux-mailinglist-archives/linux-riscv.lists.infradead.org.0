Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBDFCF2C4
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 08:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMmOoSLJDWp68YDrjDmebIyRgW8+ZdgDa91+lS5bDzA=; b=tUvvsIZGHvD0Yp
	dnrmJum2LvRnjh6NX4lC95cN0ekDGuIhuI8wrlVfDrTqnSMl0TDa/QKi8hm/Vv08CkSSimCt+t26f
	xdaoaL94i0afsqNLl2I/m3z6JDmSHwhV1XHPXMxybhqNFXXMbpKtvbr3D+SdNCWvSq3Taz9egVWvL
	v9oMhCW2pSvqAC4ULeGRW436T/mJnNxgJMhEbJ3zct+BdMeo4rhB5BGtf0mXH6taUQEL0C+NEsoka
	u57oaYKONrPtHhMrPlilQGhI4sEOPVgkF4QpZZaPo3c2xsymcM0n8K0gZAFbxpuw3sqDB0uETlhoB
	yzKn9HapwxS0HFIVQX9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHj3j-0004bT-3q; Tue, 08 Oct 2019 06:33:23 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHj3f-0004aq-6C
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 06:33:21 +0000
Received: from aurel32 by hall.aurel32.net with local (Exim 4.92)
 (envelope-from <aurelien@aurel32.net>)
 id 1iHj3b-0008TF-T2; Tue, 08 Oct 2019 08:33:15 +0200
Date: Tue, 8 Oct 2019 08:33:15 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: David Abdurachmanov <david.abdurachmanov@sifive.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Message-ID: <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net>
 <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
 <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
User-Agent: K-9 Mail for Android
X-K9mail-Identity: !l=0&o=7015&qs=PREFIX&f=TEXT&m=!%3AZTFlOWE3YWItMzgwYy00NDQ0LWJjZGItNWJiMmNiYjBlZGJk%3ASU5CT1g%3D%3AMTQ4NTU3%3AANSWERED&p=0&q=SHOW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_233319_229561_7DC9C937 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Le 8 octobre 2019 08:14:58 GMT+02:00, David Abdurachmanov <david.abdurachma=
nov@sifive.com> a =E9crit :
>On Tue, Oct 8, 2019 at 7:30 AM Aurelien Jarno <aurelien@aurel32.net>
>wrote:
>>
>> On 2019-10-07 22:19, Atish Patra wrote:
>> > Thanks for the detailed analysis. Can you please keep me and david
>in
>> > cc when you report the issue to U-boot ?
>>
>> Yep. I have progressed a bit on that, and now I am not convinced it's
>an
>> U-boot issue, it can be a GCC issue.
>>
>> Here are the conditions to reproduce the bug:
>> - U-boot runs on hart 1, 2 or 3
>> - the autoboot process is not interrupted
>> - extlinux is used to boot the kernel
>> - arch/riscv/lib/bootm.c is compiled with GCC 9 (works fine with GCC
>8)
>>
>> When the problem happens, the missing hart actually ends its
>execution
>> in an illegal instruction trap trying to execute the FDT (I only
>noticed
>> that recently as the message was hidden by the use of earlycon=3Dsbi):
>>
>> | SiFive FSBL:       2018-03-20
>> | HiFive-U serial #: 00000246
>> |
>> | OpenSBI v0.4-50-g30f09fb (Oct  6 2019 21:58:05)
>> |    ____                    _____ ____ _____
>> |   / __ \                  / ____|  _ \_   _|
>> |  | |  | |_ __   ___ _ __ | (___ | |_) || |
>> |  | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
>> |  | |__| | |_) |  __/ | | |____) | |_) || |_
>> |   \____/| .__/ \___|_| |_|_____/|____/_____|
>> |         | |
>> |         |_|
>> |
>> | Platform Name          : SiFive Freedom U540
>> | Platform HART Features : RV64ACDFIMSU
>> | Platform Max HARTs     : 5
>> | Current Hart           : 2
>> | Firmware Base          : 0x80000000
>> | Firmware Size          : 104 KB
>> | Runtime SBI Version    : 0.2
>> |
>> | PMP0: 0x0000000080000000-0x000000008001ffff (A)
>> | PMP1: 0x0000000000000000-0x0000007fffffffff (A,R,W,X)
>> |
>> |
>> | U-Boot 2019.10-rc4-00037-gdac51e9aaf-dirty (Oct 06 2019 - 21:56:51
>+0000)
>> |
>> | CPU:   rv64imafdc
>> | Model: SiFive HiFive Unleashed A00
>> | DRAM:  8 GiB
>> |
>> | MMC:   spi@10050000:mmc@0: 0
>> | In:    serial@10010000
>> | Out:   serial@10010000
>> | Err:   serial@10010000
>> | Net:   eth0: ethernet@10090000
>> | Hit any key to stop autoboot:  0
>> | switch to partitions #0, OK
>> | mmc0 is current device
>> | Scanning mmc 0:2...
>> | Found /boot/extlinux/extlinux.conf
>> | Retrieving file: /boot/extlinux/extlinux.conf
>> | 510 bytes read in 5 ms (99.6 KiB/s)
>> | U-Boot menu
>> | 1:      kernel 5.3.4
>> | 2:      Debian GNU/Linux kernel 5.3.0-trunk-riscv64
>> | Enter choice: 1
>> | 1:      kernel 5.3.4
>> | Retrieving file: /boot/vmlinux-5.3.4
>> | 9486076 bytes read in 4813 ms (1.9 MiB/s)
>> | append: root=3D/dev/mmcblk0p2 rw console=3DttySIF0 rootwait
>> | Retrieving file: /boot/hifive-unleashed-a00.dtb
>> | 6088 bytes read in 7 ms (848.6 KiB/s)
>> | ## Flattened Device Tree blob at 88000000
>> |    Booting using the fdt blob at 0x88000000
>> |    Using Device Tree in place at 0000000088000000, end
>00000000880047c7
>> |
>> | Starting kernel ...
>> |
>> | exception code: 2 , Illegal instruction , epc  , ra 88000004
>88000000
>> | ### ERROR ### Please RESET the board ###
>
>I think, that's the same issue I had (or still have) a week ago.
>Just reminder that kernel 5.3 introduced a 64-byte header (thus no
>need to wrap kernel) at least for Image target. Thus it's booti that
>boots the kernel on U-Boot side.
>Thus the 1st instruction of that header is "j 0x40" (to the beginning
>of the actual kernel).  And 88000004 would definitely hold an illegal
>instruction.
>
>0000000000000000 <.data>:
>0:       81a0                    j       0x40
>2:       0000                    unimp
>4:       0000                    unimp
>6:       0100                    nop
>[..]

Hmm that's the beginning of the kernel code. The address 88000004
actually corresponds to the FDT. So the hart ending up in a trap
actually tries to boot the FDT instead of the kernel.

I haven't spotted any obvious differences between bootm.o compiled with
GCC 8 and GCC 9. I wonder if there is somehow a race condition because
some harts are already executing linux while the last one is still
executing U-boot.

-- =

Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
