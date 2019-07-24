Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028F873FA1
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 22:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=umMN+DINgfsLwoJGecKHNUvrTWdTH4W/F9gADUDeyCs=; b=uETD46XOhreZMj
	atooa2nzFwv13e/dPm/+cKW+s6o6fpYWhePuU57EvhgN5nyBZAaXdED4+JPld368T36tcmRn+Uj9C
	uWI4o6VO/1yLcMcZhAsmiyHTRLI/BzTiz/qcDdH+GjQcBLJ6YlMWYLgsjHY82+b9beW0q+y9WKSQ3
	7a7lvz5SEHaxUBWhRqm7vDpxYMVRZtSIbQGX1toptPZn4e+jRDH0//7VvvxtSEXFlFZVCqgVtCwrU
	JSXBEAVyLRduANI0k1ndETqCR9mtDwFRqr0/UNdCIk/BpticxAjOMs6hf7qgt0TUSbR8KnlKurp9f
	8u30nt9MGfGZ2LQQaatg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNxl-0008GK-Oi; Wed, 24 Jul 2019 20:34:13 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNxf-0008F3-7M
 for linux-riscv@lists.infradead.org; Wed, 24 Jul 2019 20:34:11 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so17277294ioa.5
 for <linux-riscv@lists.infradead.org>; Wed, 24 Jul 2019 13:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=Xe754XdQFiMOz0DCn2UE7HYtLMDtwZfqOEnlJWYqqBE=;
 b=L/w7YB1g6rwLdJCd50raJQe5EjeHMw7jN5fwyaUcTUOYeTAIjT5z8dRsGkpb9Ol2mY
 IFuF5D1EFmHtnxp3LiRFBs3vfb0FwoZ/doQpjGN9NW8FGdJNkAUi4nsqr7KpN8+/etZr
 IKN7miGwPezunChdFgIZT2Pngv+Uticzot8pgU53X+B+p5lrhrn3md7zeHrDUr2hsckO
 ecYYzb9pXECvU5upoNFpVZzSImg54xvgBUMrsLXrvRLMnbE2ZHYbsQjZhmAzlSHd/dKh
 LCQABnH2e1w7JEcbSbGl1OiDs3LWQsur0qqLogMN2xGfdQe3KxTL1iqO9rHfsGlsOzMl
 wC2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=Xe754XdQFiMOz0DCn2UE7HYtLMDtwZfqOEnlJWYqqBE=;
 b=YyZyF1LRshUu/HQRWBirhwBAr50k5+ePZxEmZ4YeSKWyDrEQQmgXlBrR4ZLcQYWIhy
 +8kaV7j4W/AfBqj413k9oD1b3/qc3YzwD3LjL+VcJyQ4iEUgkLk4KHPgoub2yTnXlYcs
 VaH8LWayzwa6KbCigQRQjbIKBYr1vFvi9VmrZ9ljPK7DMgCxADwTlgOplDF5TeKbr6In
 4yjzGJ2LTr0t/S5HyjaiLLTjxeowLMuGAnl8YCb4pC56kYEjQznu7dgD+bf3uyQ2eVp+
 54VYDg9LxJlh/W5QmRQSITSTLxMX3gGfMDEWUNZCN7s6BNNSVkuthTpsvbCAKW21mXzS
 Hy+Q==
X-Gm-Message-State: APjAAAW4VplrsCQ7MKLgA9JUYXUQ/dDmoJWxqvOmhVmIjajCTyW7NRX1
 ar1IRk0JevQbmd8X9V89cPQpAA==
X-Google-Smtp-Source: APXvYqwO+v2VYplsQ/5ClrTxQxYoVRVi+nuWq0G66IWyPpRGjCRkod5Qu66H/jszMP3KqY9o82uJ0Q==
X-Received: by 2002:a6b:6d08:: with SMTP id a8mr69878303iod.191.1564000445971; 
 Wed, 24 Jul 2019 13:34:05 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id c23sm39477798iod.11.2019.07.24.13.34.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:34:05 -0700 (PDT)
Date: Wed, 24 Jul 2019 13:34:03 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.3
Message-ID: <alpine.DEB.2.21.9999.1907241331250.28120@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_133407_274775_E641CBC6 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Linus,

I inadvertently based these changes on the commit immediately 
preceding the v5.3-rc1 tag, rather than the v5.3-rc1 tag itself.  Let me 
know if you'd like us to rebase them.


- Paul


The following changes since commit 3bfe1fc46794631366faa3ef075e1b0ff7ba120a:

  Merge tag 'for-5.3/dm-changes-2' of git://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm (2019-07-18 14:49:33 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc2

for you to fetch changes up to 26091eef3c179f940d2967e9bef6e22c9e1c445f:

  riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver (2019-07-22 14:49:31 -0700)

----------------------------------------------------------------
RISC-V updates for v5.3-rc2

Four minor RISC-V-related changes for v5.3-rc2:

- Add support for the new clone3 syscall for RV64, relying on the
  generic support

- Add DT data for the gigabit Ethernet controller on the SiFive FU540
  and the HiFive Unleashed board

- Update MAINTAINERS to add me to the arch/riscv maintainers' list

- Add support for PCIe message-signaled interrupts by reusing the
  generic header file

----------------------------------------------------------------
Palmer Dabbelt (1):
      MAINTAINERS: Add Paul as a RISC-V maintainer

Paul Walmsley (1):
      riscv: enable sys_clone3 syscall for rv64

Wesley Terpstra (1):
      riscv: include generic support for MSI irqdomains

Yash Shah (1):
      riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver

 MAINTAINERS                                         |  1 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 15 +++++++++++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
 arch/riscv/include/asm/Kbuild                       |  1 +
 arch/riscv/include/uapi/asm/unistd.h                |  1 +
 5 files changed, 27 insertions(+)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
