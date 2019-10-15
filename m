Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65024D838A
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 00:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvfpUXswdLTcOJxb4v+GkJ7Z/Ndl+SATEoD9BuZMJCo=; b=jk/hFsEBDY5EdI
	X7B5Bd1BoWRlCs37bQFEuoI7nhh8sMTa6zk6nwsc9A1D4rzazerA1rmWkgX5AR9a84d2Zt3P1dJkw
	RoBeLFtm2plRb0JMWEqlJPlYPvRrJ2ZkNDBKDTl7tII28aHcX+qOL//HujzLTyXFPF50Of5fUZoBm
	vMxcJxpDkm38gyrDqqGma7l7E1LOkFuBAjzSB0jc07OMMf75pf3KRxFrs67wRY2EVD3q5eh7crs42
	ziE6kJZ2uOCRYqXN8NCioLyFhUuYmG/OCZeMz55hcAIigDUpGO/a/WuEvSCLB/74LQqdEPGlKWwoW
	F8ERAE/BqYlbDXf3tL1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVCz-0001e0-M7; Tue, 15 Oct 2019 22:22:25 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVCv-0001dH-0w
 for linux-riscv@lists.infradead.org; Tue, 15 Oct 2019 22:22:23 +0000
Received: from [2a01:e35:2fdd:a4e1:fe91:fc89:bc43:b814] (helo=ohm.rr44.fr)
 by hall.aurel32.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <aurelien@aurel32.net>)
 id 1iKVCk-0005mc-On; Wed, 16 Oct 2019 00:22:10 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.92.2)
 (envelope-from <aurelien@aurel32.net>)
 id 1iKVCk-0003Jl-D6; Wed, 16 Oct 2019 00:22:10 +0200
Date: Wed, 16 Oct 2019 00:22:10 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Message-ID: <20191015222210.GA11794@aurel32.net>
References: <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net>
 <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
 <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
 <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
 <dbdd3d63186abb230840b6e8698358afc01a62cb.camel@wdc.com>
 <20191010195851.GA10676@aurel32.net>
 <f2a467d2dfd1828533fee8a8edf7eac51d8c1d84.camel@aisec.fraunhofer.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f2a467d2dfd1828533fee8a8edf7eac51d8c1d84.camel@aisec.fraunhofer.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_152221_206059_EAC59F95 
X-CRM114-Status: GOOD (  30.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>,
 "Atish.Patra@wdc.com" <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-10-15 21:38, Auer, Lukas wrote:
> On Thu, 2019-10-10 at 21:58 +0200, Aurelien Jarno wrote:
> > On 2019-10-09 01:34, Atish Patra wrote:
> > > On Tue, 2019-10-08 at 08:33 +0200, Aurelien Jarno wrote:
> > > > Le 8 octobre 2019 08:14:58 GMT+02:00, David Abdurachmanov <
> > > > david.abdurachmanov@sifive.com> a =E9crit :
> > > > > On Tue, Oct 8, 2019 at 7:30 AM Aurelien Jarno <aurelien@aurel32.n=
et
> > > > > wrote:
> > > > > > On 2019-10-07 22:19, Atish Patra wrote:
> > > > > > > Thanks for the detailed analysis. Can you please keep me and
> > > > > > > david
> > > > > in
> > > > > > > cc when you report the issue to U-boot ?
> > > > > > =

> > > > > > Yep. I have progressed a bit on that, and now I am not convinced
> > > > > > it's
> > > > > an
> > > > > > U-boot issue, it can be a GCC issue.
> > > > > > =

> > > > > > Here are the conditions to reproduce the bug:
> > > > > > - U-boot runs on hart 1, 2 or 3
> > > > > > - the autoboot process is not interrupted
> > > > > > - extlinux is used to boot the kernel
> > > > > > - arch/riscv/lib/bootm.c is compiled with GCC 9 (works fine with
> > > > > > GCC
> > > > > 8)
> > > > > > When the problem happens, the missing hart actually ends its
> > > > > execution
> > > > > > in an illegal instruction trap trying to execute the FDT (I only
> > > > > noticed
> > > > > > that recently as the message was hidden by the use of
> > > > > > earlycon=3Dsbi):
> > > > > > =

> > > > > > > SiFive FSBL:       2018-03-20
> > > > > > > HiFive-U serial #: 00000246
> > > > > > > =

> > > > > > > OpenSBI v0.4-50-g30f09fb (Oct  6 2019 21:58:05)
> > > > > > >    ____                    _____ ____ _____
> > > > > > >   / __ \                  / ____|  _ \_   _|
> > > > > > >  | |  | |_ __   ___ _ __ | (___ | |_) || |
> > > > > > >  | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
> > > > > > >  | |__| | |_) |  __/ | | |____) | |_) || |_
> > > > > > >   \____/| .__/ \___|_| |_|_____/|____/_____|
> > > > > > >         | |
> > > > > > >         |_|
> > > > > > > =

> > > > > > > Platform Name          : SiFive Freedom U540
> > > > > > > Platform HART Features : RV64ACDFIMSU
> > > > > > > Platform Max HARTs     : 5
> > > > > > > Current Hart           : 2
> > > > > > > Firmware Base          : 0x80000000
> > > > > > > Firmware Size          : 104 KB
> > > > > > > Runtime SBI Version    : 0.2
> > > > > > > =

> > > > > > > PMP0: 0x0000000080000000-0x000000008001ffff (A)
> > > > > > > PMP1: 0x0000000000000000-0x0000007fffffffff (A,R,W,X)
> > > > > > > =

> > > > > > > =

> > > > > > > U-Boot 2019.10-rc4-00037-gdac51e9aaf-dirty (Oct 06 2019 -
> > > > > > > 21:56:51
> > > > > +0000)
> > > > > > > CPU:   rv64imafdc
> > > > > > > Model: SiFive HiFive Unleashed A00
> > > > > > > DRAM:  8 GiB
> > > > > > > =

> > > > > > > MMC:   spi@10050000:mmc@0: 0
> > > > > > > In:    serial@10010000
> > > > > > > Out:   serial@10010000
> > > > > > > Err:   serial@10010000
> > > > > > > Net:   eth0: ethernet@10090000
> > > > > > > Hit any key to stop autoboot:  0
> > > > > > > switch to partitions #0, OK
> > > > > > > mmc0 is current device
> > > > > > > Scanning mmc 0:2...
> > > > > > > Found /boot/extlinux/extlinux.conf
> > > > > > > Retrieving file: /boot/extlinux/extlinux.conf
> > > > > > > 510 bytes read in 5 ms (99.6 KiB/s)
> > > > > > > U-Boot menu
> > > > > > > 1:      kernel 5.3.4
> > > > > > > 2:      Debian GNU/Linux kernel 5.3.0-trunk-riscv64
> > > > > > > Enter choice: 1
> > > > > > > 1:      kernel 5.3.4
> > > > > > > Retrieving file: /boot/vmlinux-5.3.4
> > > > > > > 9486076 bytes read in 4813 ms (1.9 MiB/s)
> > > > > > > append: root=3D/dev/mmcblk0p2 rw console=3DttySIF0 rootwait
> > > > > > > Retrieving file: /boot/hifive-unleashed-a00.dtb
> > > > > > > 6088 bytes read in 7 ms (848.6 KiB/s)
> > > > > > > ## Flattened Device Tree blob at 88000000
> > > > > > >    Booting using the fdt blob at 0x88000000
> > > > > > >    Using Device Tree in place at 0000000088000000, end
> > > > > 00000000880047c7
> > > > > > > Starting kernel ...
> > > > > > > =

> > > > > > > exception code: 2 , Illegal instruction , epc  , ra 88000004
> > > > > 88000000
> > > > > > > ### ERROR ### Please RESET the board ###
> > > > > =

> > > > > I think, that's the same issue I had (or still have) a week ago.
> > > > > Just reminder that kernel 5.3 introduced a 64-byte header (thus no
> > > > > need to wrap kernel) at least for Image target. Thus it's booti
> > > > > that
> > > > > boots the kernel on U-Boot side.
> > > > > Thus the 1st instruction of that header is "j 0x40" (to the
> > > > > beginning
> > > > > of the actual kernel).  And 88000004 would definitely hold an
> > > > > illegal
> > > > > instruction.
> > > > > =

> > > > > 0000000000000000 <.data>:
> > > > > 0:       81a0                    j       0x40
> > > > > 2:       0000                    unimp
> > > > > 4:       0000                    unimp
> > > > > 6:       0100                    nop
> > > > > [..]
> > > > =

> > > > Hmm that's the beginning of the kernel code. The address 88000004
> > > > actually corresponds to the FDT. So the hart ending up in a trap
> > > > actually tries to boot the FDT instead of the kernel.
> > > > =

> > > =

> > > Do you see the issue if you manually use bootm instead of extlinux?
> > > =

> > > =3D> bootm $kernel_addr_r - $fdt_addr_r
> > > =

> > > This is a probably not related as bootm is jumping to wrong location
> > > for some reason. However, it may be worth a shot as it fixes fdt
> > > corruption. =

> > =

> > I have just tested, and it doesn't work. On the other hand I have try to
> > run that manually, and interrupting the boot process usually hides the
> > problem.
> > =

> =

> I tried to reproduce the issue today, but was not able to. If you can
> upload the relevant files somewhere, I can retry it with them. I have
> also added information on the boot flow in U-Boot below in hopes that
> it is helpful for debugging.

You can find the files there:
https://temp.aurel32.net/hifive-opensbi-uboot/

fw_payload.bin contains the OpenSBI + U-Boot payload to be copied to the
first partition of the SD card. The boot.tar.gz contains the /boot =

directory (kernel, fdt and extlinux.conf) and has to be put on the
second partition of the SD card. Note that this partition should have
the GPT boot flag enabled for extlinux to work.

I haven't looked more at the issue recently now that I have found that
using GCC 8 is a fix/workaround. Therefore those files are from ~10 days
ago. I will try to do more tests during the week-end.

-- =

Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
