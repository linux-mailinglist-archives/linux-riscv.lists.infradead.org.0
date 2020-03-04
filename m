Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74752178942
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 04:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mt6yB7ZsfUPNKzsI/X9J8J8MECQJh9Ou5hGsG/G5lZ0=; b=mVpPMKCpHzQcZB7Ns5WH427C7
	Npr32ln/6HCWYdEoXcJ08/m0umg4Eoc4pwfRjm5lmf9WsvA7rocmFNaXaAW2hkkB2EiCHJ96XpjUO
	8RLgCOsYECeI/YiRjPRk4oIo1luBeSVblcQ6x61aWN0JGHXEAGWgz5cud5kf1aDxLPGlEbQv9Kk+M
	FW1DcNUx/8NK1j4OA++4tw4y041tj+YXci3akfQ7aJdmDKX3+Nww9mpGEhI47fiqL5NOxLTyVb8Vc
	K26IWtPj6q+f7SdsVBDHeycoXUrF0PgrsyLw87yGQFqAkHuuepEyWWk8tjsJAxyyVA7U2xOiPnNqC
	f3lHplAew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9L5J-0001bH-Tm; Wed, 04 Mar 2020 03:52:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9L5G-0001aj-8c
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 03:52:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id 6so314802wmi.5
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 19:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mt6yB7ZsfUPNKzsI/X9J8J8MECQJh9Ou5hGsG/G5lZ0=;
 b=1S1p0zDbysYUH5cx5qc1uTmgKQoxqYaI0XuxEoQtX11kohIcTxM2DmZkzbHtTGxydb
 ibisGBjdWzqcsjrrjfKQk9Q5hy66/dDcDvjh0Jo+cAUl3m3FxT+z3xpK2goReb0jhS9V
 bmwov5LTUKX6WjTcQ5tccWRBvIIZsRiKlTZ6tmQjoRzz9MpBSseGks731Kll5Grephav
 dd5Va/JWYmZJAQsehQQbhO6e9OWPcmXx/QBvz0HYkQLg9EB5nUQA2AY2PZc5YsadS+8e
 b2rP1j4WwpP1QDiY36MEVCG8ZDUbFT8B64WMioew+oZnjGudxqm5Zc3WpSFWRfK3F/6M
 KmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mt6yB7ZsfUPNKzsI/X9J8J8MECQJh9Ou5hGsG/G5lZ0=;
 b=FERhEKB1vshAfYvaF9A0omTN2kDIQG1MicRibCDXZWa3n/dzWAdqhR5v6GrN6HY9k/
 lJQXDvcmdfK50jX48CVgFlXzKZ6Xf7PmMVZ8Zk2q2cKCFNkjHlltt/zKjAjlwZlfH/UU
 guQ6cknKjRs6cXVMRSVUShsRXwWTkrBn0w09eJ9q8cmEzadwkMOeg9WY3R/TC0RwapUZ
 trEDr2XqZHufuucQX/u36R9ea5MCmVU2Bk43bSsLVbuKtfsOPp5d7kk2xqo7vjtIeSrq
 Puy8s4rlnpQrmXY5+vjqmEWxWY7U0sDdDHHoHwMZo9UGwJ+DFFhEXuwxqT2LaypZ1Xjn
 8/Og==
X-Gm-Message-State: ANhLgQ3JwsF+p9zG6mDr5UzKNWitJPnZr/mZAxoHTDlvCAFtaFh0o896
 GxAt3CXBtBacIBJJw62oL8c1t7p3f/uwtF4IksHYglYIsXQ=
X-Google-Smtp-Source: ADFU+vubnNfRmRGGLRnYmt2VNvxnFzunzcIi6FF2fFPEBGYxNasa47S0fv5JyuIjQZI0NEWXFJxaUcvct7KBmoYwaOY=
X-Received: by 2002:a05:600c:22d6:: with SMTP id
 22mr1128368wmg.102.1583293952513; 
 Tue, 03 Mar 2020 19:52:32 -0800 (PST)
MIME-Version: 1.0
References: <mhng-1817491a-46cd-4ed3-b8cb-bf3319dad665@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-1817491a-46cd-4ed3-b8cb-bf3319dad665@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Mar 2020 09:22:21 +0530
Message-ID: <CAAhSdy0LHv63qJ2kmc8DH8+Jgg-JH6Enrpk0kCzncSdaF2TOLg@mail.gmail.com>
Subject: Re: for-next based on rc4
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_195234_302990_711F91AC 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Palmer,

On Wed, Mar 4, 2020 at 12:27 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> rc4 is looking pretty good to me, so I'm going to use that as the starting
> point for the next for-next.  A quick poke at my inbox reveals:
>
> * K210 support
> * Static kernel memory permissions
> * Percpu in modules
> * UEFI
> * KGDB
>
> as the big patch sets, but there's some smaller things interspersed that my
> grepping isn't going to catch.  For the record, for-next currently contains:
>
> * abc71bf0a703 - (HEAD -> for-next, riscv/for-next) RISC-V: Stop using LOCAL for the uaccess fixups (22 seconds ago) <Palmer Dabbelt>
> * fdff9911f266 - RISC-V: Inline the assembly register save/restore macros (12 minutes ago) <Palmer Dabbelt>
> * 52e7c52d2ded - RISC-V: Stop relying on GCC's register allocator's hueristics (17 minutes ago) <Palmer Dabbelt>
> * 064223b947a8 - RISC-V: Stop putting .sbss in .sdata (17 minutes ago) <Palmer Dabbelt>
> * aff7783392e0 - riscv: force hart_lottery to put in .sdata section (17 minutes ago) <Zong Li>
> * 2fab7a15604c - riscv: Delete CONFIG_SYSFS_SYSCALL from defconfigs (17 minutes ago) <Deepa Dinamani>
> * ab70a73aa45b - riscv: Use flush_icache_mm for flush_icache_user_range (17 minutes ago) <Guo Ren>
>

One important RC fix to address compile issue in Linux-5.6-rcX:

[PATCH] RISC-V: Move all address space definition macros to one place
(Refer, https://lkml.org/lkml/2020/2/24/1084)

Few other candidates for your next branch (based on my manual scan):

1. [PATCH v2 0/4] QEMU Virt Machine Kconfig option
(Refer, https://lore.kernel.org/patchwork/cover/1161456/)

2. [PATCH v10 00/12] Add support for SBI v0.2 and CPU hotplug
(Refer, https://lwn.net/Articles/813394/)

3. [PATCH RESEND v2] riscv: Introduce CONFIG_RELOCATABLE
(Refer, https://patchwork.kernel.org/patch/11417233/)

4. [PATCH] riscv: Use p*d_leaf macros to define p*d_huge
(Refer, https://lkml.org/lkml/2020/2/20/57)

5. [PATCH] riscv: Fix range looking for kernel image memblock
(Refer, https://lkml.org/lkml/2020/2/17/12)

6. [PATCH] riscv: dts: Add GPIO reboot method to HiFive Unleashed DTS file
(Refer, https://www.spinics.net/lists/devicetree/msg335587.html)

7. [PATCH v2 0/3] riscv: mem= support, ioremap exec fix
(Refer, https://lkml.org/lkml/2020/2/15/88)

Regards,
Anup

