Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA2519D4B6
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 12:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fxWD5xD1kw2v28yDVrvDJkghPKBx/ATy5cWQRGW6rXI=; b=ceSA2yTJ/Q/v0Id6GLiWO+kRu
	5A08+KFO7LCqNYW0jrrXhjhXQlJBmZWmZiUjezWeKEQIsLQaoqvHZ5IStQyp56riQrsfK9GnSnUav
	tTeXkS/NoxV2VvuMiiVTAxjtGFBvVxd1BwEXWU8fev+s7upfj32SainKv0SJdS5NYByj01nxiOiQa
	+Mq7xiDQGKAMPQm9VVoEyPPdCamUBree9WwQ0BGO73qM+KpIC5UMqPD69ngvVzVcr0ZT8gbqW19BZ
	QcxlArkDiEAtmEsfJfBQ2K26fSVr+lBWsQVi/omm4NAyB+z14kKYWwBdAOnZtCbiqs3Eojo9Sce0J
	PNqbysRbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJJU-0007Os-22; Fri, 03 Apr 2020 10:12:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJJP-0007OC-OK
 for linux-riscv@lists.infradead.org; Fri, 03 Apr 2020 10:12:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id j17so7747315wru.13
 for <linux-riscv@lists.infradead.org>; Fri, 03 Apr 2020 03:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fxWD5xD1kw2v28yDVrvDJkghPKBx/ATy5cWQRGW6rXI=;
 b=zDi0W/4zhSRQ0MrYET/k3kVIY1ln6S7n48qg1chJSVbqXW9yM/0IO5KFqJXYvy1ui9
 nf9YRLVhQbIaWBmc9xUvv0qn1pILp21V0Fdf304KGSTUUKZ8FW58CvJxyaK4ZkvvKKEC
 FqTepxF7OruGicK7sanOHdsTPgd7RleiokbMA85TIq0s/k+HMXj8Vefvh7EvHhFETjlF
 7bx4WyTujIZq6muwzmH/ZsMWFf30gYKlBzBA+hpbXC27ypEy4NeuDQiRaE7F1aYV4b5x
 O8wIfqx+i8bpYDygsJsBJ7RjVAs+fxX+ry5Y28U63bvqtCMFuQNGenb/yvNYXMbn7Gmk
 NoSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fxWD5xD1kw2v28yDVrvDJkghPKBx/ATy5cWQRGW6rXI=;
 b=EWPOxNCdmDlzMJGaawp7Bbytg4rvv/C5p/Faax52iNNxckrajJccd5+YzTnr3RXxF/
 qZN3pq0mqZLLTnPzJBHDYawhOUc+unfTsgH9B5aojmUxOcidvKfcydhOV7fHa95CYNnX
 vyXRr8L9yhD2lO6oOCyakCq74bDrHy65LTwTBUbpiQ+oh5BAZMRGP7ihQFivpTyw+L1Y
 BRMIc7hNr5LHmbR7LRiNwZFzoo3zUNF4Zy5KXuaY0lAMftA++gkosPqA/gDUojUOiloq
 5Np9uIvwt+o8nUbmP5ARd6ZR3RC8eeKtcmlUdnsphrcUMqFidKnoHXqV5HYwJ1wsgxFN
 uPlg==
X-Gm-Message-State: AGi0PuYSxpvQVMjtnpn4BYVxU41GcDdoR3mecMb7YoHePhEz75r/ehhj
 S7NcDHm0GuGbOZxC1h3gJhsrag==
X-Google-Smtp-Source: APiQypIsfyXgVfhNO1vKd2FVpsPOslYIorcaKsbXxLEGP23BeSTs1ok53J13wfnFfwKRwXOL1o63ZQ==
X-Received: by 2002:adf:a48d:: with SMTP id g13mr8758646wrb.38.1585908750118; 
 Fri, 03 Apr 2020 03:12:30 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id 98sm11779642wrk.52.2020.04.03.03.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 03:12:29 -0700 (PDT)
Date: Fri, 3 Apr 2020 11:12:27 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH v2 0/5] riscv: Add KGDB and KDB support
Message-ID: <20200403101227.74abwoyxzx4rlake@holly.lan>
References: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_031231_862747_696C5318 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kgdb-bugreport@lists.sourceforge.net, jason.wessel@windriver.com,
 dianders@chromium.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 11:23:06PM +0800, Vincent Chen wrote:
> This patch set implements required ports to enable RISC-V kernel to support
> KGDB and KDB features. Because there is no immediate value in the RISC-V
> trap instruction, the kernel cannot identify the purpose of each trap
> exception through the opcode. This makes the existing identification
> schemes in other architecture unsuitable for the RISC-V kernel. In order
> to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
> to help the RISC-V kernel identify the KGDB trap exception. In addition,
> the XML target description was introduced in this patch set to enable KGDB
> to report the contents of the status, cause and steal registers.
>  
> This patchset has passed the kgdbts test suite provided by Linux kernel on
> HiFive unleashed board and QEMU.

Can you share the defconfig and qemu boot lines used for testing.

I'd like to see if they can easily be integrated into kgdbtest. Normally
figuring out the qemu boot line is the hardest bit of adding support for
an architecture one is not familar with.


Daniel.


PS At the moment it helps kgdbtest a lot if qemu is configured with two
   serial ports but I really should get round to relaxing that!

> 
> Changes since v1:
> 1. Replace the magic number with macro when filling the gdb_regs[].
> 2. Only support GDB XML packet instead of all query packets.
> 3. Move the macros used to parse instrcuton to parse_asm.h
> 
> 
> Vincent Chen (5):
>   kgdb: Add kgdb_has_hit_break function
>   riscv: Add KGDB support
>   kgdb: enable arch to support XML packet support.
>   riscv: Use the XML target descriptions to report 3 system registers
>   riscv: Add SW single-step support for KDB
> 
>  arch/riscv/Kconfig                 |   2 +
>  arch/riscv/include/asm/Kbuild      |   1 -
>  arch/riscv/include/asm/gdb_xml.h   | 117 ++++++++++++
>  arch/riscv/include/asm/kdebug.h    |  12 ++
>  arch/riscv/include/asm/kgdb.h      | 113 +++++++++++
>  arch/riscv/include/asm/parse_asm.h | 214 +++++++++++++++++++++
>  arch/riscv/kernel/Makefile         |   1 +
>  arch/riscv/kernel/kgdb.c           | 382 +++++++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/traps.c          |   5 +
>  include/linux/kgdb.h               |   9 +
>  kernel/debug/debug_core.c          |  12 ++
>  kernel/debug/gdbstub.c             |  13 ++
>  lib/Kconfig.kgdb                   |   5 +
>  13 files changed, 885 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/include/asm/gdb_xml.h
>  create mode 100644 arch/riscv/include/asm/kdebug.h
>  create mode 100644 arch/riscv/include/asm/kgdb.h
>  create mode 100644 arch/riscv/include/asm/parse_asm.h
>  create mode 100644 arch/riscv/kernel/kgdb.c
> 
> -- 
> 2.7.4
> 

