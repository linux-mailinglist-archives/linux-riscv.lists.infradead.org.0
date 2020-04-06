Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D7A19EF50
	for <lists+linux-riscv@lfdr.de>; Mon,  6 Apr 2020 04:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BJkM/YidN7kWbOXxhjUPus+VASEIWhclvMLuNASyfdI=; b=bxNd1udSGbizVqFO7CH1phmWq
	qV4F5rPe+7PPnSca+MCr4/kN5d88sAf0IOkYBstSMUUgPROrq239xLBomObWvETEEmxOk+KKRwSgb
	+K5bnTDCglv+MCh4Y5fUidvokiekgeRvYfZo7gqJCy78Nir5FxWODNkfPV6ycxDI95jGRp2a53Jaw
	1YC64b/irWSzQx4pWHP1jvtk+xuVCcqdDsTqXcPhGUSOvfFudRIovHtD/eWJPbfb3mjqurykEX6mJ
	KNcwxXx/O1Dc87qbr19mjZc7dv+Xa4Eft3KpS3sN0sPpwV70DFMBdCJL79yir5G+0oL8gk7652LPO
	8B0XRz21A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLHbn-0008Qv-VW; Mon, 06 Apr 2020 02:35:31 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLHbj-0008QL-Bg
 for linux-riscv@lists.infradead.org; Mon, 06 Apr 2020 02:35:30 +0000
Received: by mail-qt1-x843.google.com with SMTP id c14so11805136qtp.0
 for <linux-riscv@lists.infradead.org>; Sun, 05 Apr 2020 19:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BJkM/YidN7kWbOXxhjUPus+VASEIWhclvMLuNASyfdI=;
 b=FQELrXDzJ7Nxx+rNCwpdKb4OC7Az3FTH3BrNNkzYYpjVUbSTdjS6bvRuFkupsdyfOc
 8b9Zybx0lNYAAQg5HyGCuOSlnUoupz5PePX0PRedNIRCI8W7Cw2mStJoqjK04RWe1yOu
 ESNpBZQf8ovUiFnPii2zlErgbD4et4T9XXbA5NTvPyBC4nuJIa7iWG7T0DWsf3NM1t+6
 8xmxeQlnuylgUtqpS7rUa6zXDdI0MtRSxwT4epbybIV1eWfsw25JZIs44AGs7/WlurmZ
 idVZWI1vjrsSTjAGA2Fg3qJjXhKj4cr6uWy8EiVtgOoeyEerqQRQfGYGFcr2YbI0AO/v
 CMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BJkM/YidN7kWbOXxhjUPus+VASEIWhclvMLuNASyfdI=;
 b=iZ1cP/1gcRO02sixQ59cRclVBrxhDXNm1/Pnr45XFkYjmEWAZpaS0J/w/uh1Vo0ty0
 uSOBmXQSC3001gXtNs5oev/igj3sGFZNMT9vuNY8hA5GIAFOUYRVWYmjoZtZMA+/FNL6
 /qk13IHOCf6fWoUAMr34qHkdmfy38Qn2MmSL8C2/yQy+WAZN7iy96WsDXie0NX2u4QGi
 U6MMi8Oe8cK2kvuwjfAKIDbkN35SQrqzV+RMG7PGWC1Nr9zBjfkJGcuOBESjTbY2ZdOM
 lEPt7Mp0TGLDDTNLJmo6s72iHuZWNVn18XGiVgmNAPmxSApklsOlRRA9IbKSlvb2f2vg
 0fAQ==
X-Gm-Message-State: AGi0Pub4KTaFer0MHOLcxTJodEP4FDVgKD3IxguWhneWBD7Qkxk04wPG
 h3UVVH+hhQbjGc5eqGmKt3PVRtASf2ZxQgJtEpME1A==
X-Google-Smtp-Source: APiQypLcobAg9SYTLPE/P4YWfylm3KeLWO+U8SocXUxIXX8luYKSQwTE0hEiQZkPMP76hO4sxaS2CDAmumsw0QYAFLE=
X-Received: by 2002:ac8:7199:: with SMTP id w25mr1271249qto.86.1586140524718; 
 Sun, 05 Apr 2020 19:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
 <20200403101227.74abwoyxzx4rlake@holly.lan>
In-Reply-To: <20200403101227.74abwoyxzx4rlake@holly.lan>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 6 Apr 2020 10:35:13 +0800
Message-ID: <CABvJ_xh2pocd1xywyZ_4VQbs8eFO6ehQfsRkQTpdTDUJXbsXEg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] riscv: Add KGDB and KDB support
To: Daniel Thompson <daniel.thompson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_193527_916937_392C661F 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kgdb-bugreport@lists.sourceforge.net, jason.wessel@windriver.com,
 Douglas Anderson <dianders@chromium.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Apr 3, 2020 at 6:12 PM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Tue, Mar 31, 2020 at 11:23:06PM +0800, Vincent Chen wrote:
> > This patch set implements required ports to enable RISC-V kernel to support
> > KGDB and KDB features. Because there is no immediate value in the RISC-V
> > trap instruction, the kernel cannot identify the purpose of each trap
> > exception through the opcode. This makes the existing identification
> > schemes in other architecture unsuitable for the RISC-V kernel. In order
> > to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
> > to help the RISC-V kernel identify the KGDB trap exception. In addition,
> > the XML target description was introduced in this patch set to enable KGDB
> > to report the contents of the status, cause and steal registers.
> >
> > This patchset has passed the kgdbts test suite provided by Linux kernel on
> > HiFive unleashed board and QEMU.
>
> Can you share the defconfig and qemu boot lines used for testing.
>
> I'd like to see if they can easily be integrated into kgdbtest. Normally
> figuring out the qemu boot line is the hardest bit of adding support for
> an architecture one is not familar with.
>
The process of building a RISC-V kernel is a bit different from other
architecture. Maybe you can refer the steps in
https://risc-v-getting-started-guide.readthedocs.io/en/latest/linux-qemu.html
to build the kernel image and run it.

For the Linux configuration used by KGDB, I just enable KGDB related
configuration based on riscv defconfig. The riscv defconfig can
founded in arch/riscv/configs/defconfig

The QEMU boot lines are listed in the following.

qemu-system-riscv64 -M virt -m 256M -nographic \
-kernel <bbl image>\
-append "debug root=/dev/vda rw console=ttyS0" \
-drive file=<root file system>,format=raw,id=hd0 \
-serial tcp:localhost:2345,server \
-gdb tcp::1133 \
-device virtio-blk-device,drive=hd0 \

>
> Daniel.
>
>
> PS At the moment it helps kgdbtest a lot if qemu is configured with two
>    serial ports but I really should get round to relaxing that!
>
> >
> > Changes since v1:
> > 1. Replace the magic number with macro when filling the gdb_regs[].
> > 2. Only support GDB XML packet instead of all query packets.
> > 3. Move the macros used to parse instrcuton to parse_asm.h
> >
> >
> > Vincent Chen (5):
> >   kgdb: Add kgdb_has_hit_break function
> >   riscv: Add KGDB support
> >   kgdb: enable arch to support XML packet support.
> >   riscv: Use the XML target descriptions to report 3 system registers
> >   riscv: Add SW single-step support for KDB
> >
> >  arch/riscv/Kconfig                 |   2 +
> >  arch/riscv/include/asm/Kbuild      |   1 -
> >  arch/riscv/include/asm/gdb_xml.h   | 117 ++++++++++++
> >  arch/riscv/include/asm/kdebug.h    |  12 ++
> >  arch/riscv/include/asm/kgdb.h      | 113 +++++++++++
> >  arch/riscv/include/asm/parse_asm.h | 214 +++++++++++++++++++++
> >  arch/riscv/kernel/Makefile         |   1 +
> >  arch/riscv/kernel/kgdb.c           | 382 +++++++++++++++++++++++++++++++++++++
> >  arch/riscv/kernel/traps.c          |   5 +
> >  include/linux/kgdb.h               |   9 +
> >  kernel/debug/debug_core.c          |  12 ++
> >  kernel/debug/gdbstub.c             |  13 ++
> >  lib/Kconfig.kgdb                   |   5 +
> >  13 files changed, 885 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/riscv/include/asm/gdb_xml.h
> >  create mode 100644 arch/riscv/include/asm/kdebug.h
> >  create mode 100644 arch/riscv/include/asm/kgdb.h
> >  create mode 100644 arch/riscv/include/asm/parse_asm.h
> >  create mode 100644 arch/riscv/kernel/kgdb.c
> >
> > --
> > 2.7.4
> >

