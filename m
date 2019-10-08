Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1CCCFAC4
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 14:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TDgWPNGgVh8NeAtsCKT4gP8zLaHNgiBQbcBU5dZYQO0=; b=j0/
	87QnvjrWLbsoze6BS3aCDhqqXBKz7JAEAH0DNwZp1R5YQy2W7pOIJRD8l8A4QYELyEhxwyOQ+DZoL
	PxusX2HIFqIec6KsEfgOtktEOrb4FQb0kLcm3jYMcwhCtOugJ0mdi80KQnE/zF+hG1QGajr1z29EX
	gL0tD5G7hQ++qB5TTCfMjFFA9FMr1wTCON1QRY0O8/p/3wzE9WceRMRVif540z4LFeKzFOuy5kQO2
	Cu/fE400RDxKb4EqNZp8GPSz5Fo2GmaiMQSey52k5tvg/A/RZXp0321OjLx4vsd5hs+tGNcJdKnbi
	yYE/0ObByJeZv9J2fYemWFqkgifvRyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHp5I-0008RQ-Ga; Tue, 08 Oct 2019 12:59:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHp4c-0007nO-EQ
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 12:58:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so3055460wme.1
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 05:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id;
 bh=GfvsO4/d+Aty+AebeEsW364ybAjW+zeAPcXCiQNi3OY=;
 b=au8NF5xYwMDXKLOX11L7FwEpPZ4rNyVtbiLvU9GJnkTZiesvqWaTqlfaUzrc5+jmld
 GCjNf3/+0KqE2CLGxVJ6PmRWNLTBcDm+BWd3oBmLpcLwYbLtqRcy+FWlcWlSbskjy5Qk
 PDC08Tw0s01bDJBUZ4H+glTABJshk5jt67rD0Fiue4l5TXj5oLQZz6nxlpPe6vz/BZhM
 GtWLYQaSrwaSY3fEw26Gd/0mLfYEN6NqNt8a1kYowZf0tmsgxwbY9Y+WvInlZJoPqX90
 bKmtHLcA+4O7SBbMUeItG4uzgDxQh9aT57Af4d6j4mOteBTGqFILqYgAtUr2hILfh0OH
 P8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=GfvsO4/d+Aty+AebeEsW364ybAjW+zeAPcXCiQNi3OY=;
 b=RlitJeadNVKDtAGhr4mp5W9U8a2wiDoC8kHoJyUwWUDbrGiWXGfAsHgcJVSn7khwXy
 qEjC0AsJkF4gxflwl8J8030Xd+FYgD7+RTca7wO+4XnlakD8W2jkREplXQArS6SreFJK
 tMc4ZTq0A6imzkR0z1ZNDtTzkIRvyaguoNSd956LXZFEfKM+5lQEU3mZoDijFch8KH/b
 l9aIBQx/LlzD4ZR0PfpYiQZslPzOHPlmafZ3op53V10n3PiapyNMo4z+nE7ltZO32wBX
 vm0sbtxgDKSGXJuxzWbqCQErZRvole+E/5fEwig7lwFvTD2RrLyu7C2T+4GvNSMPBm2K
 Ax+A==
X-Gm-Message-State: APjAAAVmnJwc8NoTdHCn994IT5uX2ydUqaBHWLOzL714rWH9ZTNovmUi
 OMdlhUcrW/DSBBZ50HLRze70Dg==
X-Google-Smtp-Source: APXvYqyUkyISrmPHLuIc2O+EbAY+OLrIiU8zAiKT75g9GvR8x7VgypYedDmDUurWq68iYpkzqCbrmw==
X-Received: by 2002:a1c:7c15:: with SMTP id x21mr3422779wmc.36.1570539520447; 
 Tue, 08 Oct 2019 05:58:40 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id o4sm38444938wre.91.2019.10.08.05.58.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Oct 2019 05:58:39 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com
Subject: [PATCH v2] PCI/MSI: Enable PCI_MSI_IRQ_DOMAIN support for Microblaze
Date: Tue,  8 Oct 2019 14:58:35 +0200
Message-Id: <b5959a9f6bfa65f0ae1a6a184e1b09dcec8e8f15.1570539512.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055842_536964_DEC795CD 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Kuldeep Dave <kuldeep.dave@xilinx.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-pci@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Firoz Khan <firoz.khan@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Kuldeep Dave <kuldeep.dave@xilinx.com>

Add Microblaze as an arch that supports PCI_MSI_IRQ_DOMAIN and add
generation of msi.h in the Microblaze arch.

The same change has been done by commit 251a44888183
("riscv: include generic support for MSI irqdomains")
and by commit 2a9af0273c1c
("PCI/MSI: Enable PCI_MSI_IRQ_DOMAIN support for RISC-V").

Signed-off-by: Kuldeep Dave <kuldeep.dave@xilinx.com>
Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Squash patches together https://lkml.org/lkml/2019/10/8/277
  https://lkml.org/lkml/2019/10/8/283

Please take it directly via pci tree.
---
 arch/microblaze/include/asm/Kbuild | 1 +
 drivers/pci/Kconfig                | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/microblaze/include/asm/Kbuild b/arch/microblaze/include/asm/Kbuild
index e5c9170a07fc..83417105c00a 100644
--- a/arch/microblaze/include/asm/Kbuild
+++ b/arch/microblaze/include/asm/Kbuild
@@ -25,6 +25,7 @@ generic-y += local64.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
+generic-y += msi.h
 generic-y += parport.h
 generic-y += percpu.h
 generic-y += preempt.h
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index a304f5ea11b9..9d259372fbfd 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -52,7 +52,7 @@ config PCI_MSI
 	   If you don't know what to do here, say Y.
 
 config PCI_MSI_IRQ_DOMAIN
-	def_bool ARC || ARM || ARM64 || X86 || RISCV
+	def_bool ARC || ARM || ARM64 || X86 || RISCV || MICROBLAZE
 	depends on PCI_MSI
 	select GENERIC_MSI_IRQ_DOMAIN
 
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
