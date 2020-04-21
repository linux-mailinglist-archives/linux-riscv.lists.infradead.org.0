Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A79B1B32EE
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 01:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xUcGflZnFhOd0jedtjOYb8d/IvgXOcGwD+FKfMvLsuQ=; b=U+HYKBHsv6kQGs
	di6nnDbNFh3l4Oj/yb+gEdA1Syl0kQUEpZaAHDChVuSHtGra+YsyiJIkSkF7sXugPSKjYaUJXcY/U
	QQexLh+FLCD0G9bYQFVYrUBm78JAc015u96HfrROz2gGGJTaWlOk9TZeobuwinh+WuGsQTHhchg75
	2VNmxnpHJSJL1d8/2HyEMTczdohT6RC0hO79y89ExdAaTIfAej+x/gigMMO2FVexZiC2bSw66Jr67
	4WTVDUxnEVgE+IEHb6+7DNpzEeKpQ0EtbvHA/WaQK6eWIpdSc/vD/t9kfZOt+6UUcX+XauUfSOzy+
	K7nitMggEe3KYw1HuEiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR22g-0002l3-Vp; Tue, 21 Apr 2020 23:11:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR22c-0002j0-KA
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 23:11:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id q18so109325pgm.11
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 16:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=xUcGflZnFhOd0jedtjOYb8d/IvgXOcGwD+FKfMvLsuQ=;
 b=LBNZ6G+duzTlZvHlVNg6/+b5dK8K0HRiXD/rroodAjqaQ07GL3q50XBMniSMSrLhY7
 acZPFwVGSdoAnazeckdFUM1p6DMqVmhnnyJEEqflIJ/Tb0QhwTNuK8LICBqXNnFy5Yt/
 2d3hzttUrpX1tnESmiMeT0JxMLOoGzyPMcCyNTaHJzjvRS5sEfwczZ6AyggeFL7Nyv+M
 1G2mA+Qza9mCVTKhWOG4qf4z7Bt0eG3wVN0W2y6NBkMf5YUPiihz18MD6rEh/rhy98e4
 Yqng62BYDLSaOiBxkOophc9zmKeBwLoTVBC9dKR7uIndS3VyybXAjGsSppbdzFiECeM3
 2qsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=xUcGflZnFhOd0jedtjOYb8d/IvgXOcGwD+FKfMvLsuQ=;
 b=fgba34Dk85fXNoEHEH6eqmIwNNIMseFZqt+EMslCx+Yo8YRO1bYuEO8zbAXq52mOsI
 cFqMBWi9pZXVwOOGnRCbIXFBMnjdvIf6Uoceh69n6qd4mLBwyHz+bZSR59fJTivR8JHq
 o3eCP9gy5GinMfpS3TFC9OadwKk/b2I5AwXdHGr3I2Fm+H74PAl4ysD7YVAAcJbcFZjL
 dYwhZr6VfVnKVY7ZjI1CazuJZPTVB6rB2P9CGKrNYg+Nd14ANiVSOCbg2rcZ7Wk+mF29
 qx6iNwDwXCr0Pqvq0mkN/2rAXyXla2sgPiN9V3N9OP2dSrQnXOTTBZ4jDXjwWFmCGwPi
 whdQ==
X-Gm-Message-State: AGi0PuYz0Z7Zvteo+UQlrA8RzZ7e5gLrhirt8pKu+bm1N+qjJlPdti6r
 sV6MrwhMxfZuoGcGFkxDz16iLA==
X-Google-Smtp-Source: APiQypKfTnofrbXBc73JUBXNpJyqxRKBHickk8xxxBcTwx0xJPLlcaiORNh1G9W4AuvYudGgKYyatw==
X-Received: by 2002:a63:210:: with SMTP id 16mr7215591pgc.423.1587510653075;
 Tue, 21 Apr 2020 16:10:53 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id z5sm315104pfn.142.2020.04.21.16.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 16:10:52 -0700 (PDT)
Date: Tue, 21 Apr 2020 16:10:52 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 15:32:15 PDT (-0700)
Subject: Re: [PATCH v4 0/5] Add KGDB and KDB support
In-Reply-To: <1587004688-19788-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-93af96a6-42bf-4f06-afc5-e053e71e98e6@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_161058_663045_916E47B0 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kgdb-bugreport@lists.sourceforge.net, daniel.thompson@linaro.org,
 vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 19:38:03 PDT (-0700), vincent.chen@sifive.com wrote:
> This patch set implements required ports to enable RISC-V kernel to support
> KGDB and KDB features. Because there is no immediate value in the RISC-V
> trap instruction, the kernel cannot identify the purpose of each trap
> exception through the opcode. This makes the existing identification
> schemes in other architecture unsuitable for the RISC-V kernel. In order
> to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
> to help the RISC-V kernel identify the KGDB trap exception. In addition,
> the XML target description was introduced in this patch set to enable KGDB
> to report the contents of the $status, $cause and $badaddr registers.
>
> This patchset has passed the kgdbts test suite provided by Linux kernel on
> HiFive unleashed board and QEMU.
>
> Changes since v3:
> 1. remove duplicate macro defition
> 2. Rename CONFIG_ARCH_SUPPORTS_GDB_XML to CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
>    in the description of patch 03/05.
>
> Changes since v2:
> 1. Fix typos
> 2. Rename CONFIG_ARCH_SUPPORTS_GDB_XML to CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
> 3. Add the prefix kgdb_ to the handler functions and arrays that handle
>    "qxfer" packets
>
> Changes since v1:
> 1. Replace the magic number with macro when filling the gdb_regs[].
> 2. Only support GDB XML packet instead of all query packets.
> 3. Move the macros used to parse instructions to parse_asm.h
>
> Vincent Chen (5):
>   kgdb: Add kgdb_has_hit_break function
>   riscv: Add KGDB support
>   kgdb: enable arch to support XML packet support.
>   riscv: Use the XML target descriptions to report 3 system registers
>   riscv: Add SW single-step support for KDB
>
>  arch/riscv/Kconfig                 |   2 +
>  arch/riscv/include/asm/gdb_xml.h   | 117 +++++++++++
>  arch/riscv/include/asm/kdebug.h    |  12 ++
>  arch/riscv/include/asm/kgdb.h      | 112 +++++++++++
>  arch/riscv/include/asm/parse_asm.h | 219 +++++++++++++++++++++
>  arch/riscv/kernel/Makefile         |   1 +
>  arch/riscv/kernel/kgdb.c           | 390 +++++++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/traps.c          |   5 +
>  include/linux/kgdb.h               |  11 ++
>  kernel/debug/debug_core.c          |  12 ++
>  kernel/debug/gdbstub.c             |  13 ++
>  lib/Kconfig.kgdb                   |   5 +
>  12 files changed, 899 insertions(+)
>  create mode 100644 arch/riscv/include/asm/gdb_xml.h
>  create mode 100644 arch/riscv/include/asm/kdebug.h
>  create mode 100644 arch/riscv/include/asm/kgdb.h
>  create mode 100644 arch/riscv/include/asm/parse_asm.h
>  create mode 100644 arch/riscv/kernel/kgdb.c

Thanks, I'm taking this into for-next.

