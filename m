Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFC31B216E
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 10:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R51EKoGdprYIzq4mz86f7ksK2LhT5dJfZ4/kQMPqWXU=; b=sylUNVpvIrDCLs
	mc+6xyutU0M3xk6UfWYYvuVkR/CdD2mpuhSWSuqZFY5GBhI9zZng5hRTuQKOBWbhtdbvQIXDhs5XO
	vHnN+E8uouSfNv+FsQi72QZdaqiRCEH/mexVrVAuqBy2b/wlCR0fr9cf0lkysRDlzVQ4/OEefsbVp
	4fxwK2+XiHH3U3s3NEj2/UhaFXsaMhJQ3ijY4ffFCLKwhHu1OVd/qVeUX1qPEMTbGwj/DMZ4a2DTE
	vR7pYO6O+2UC8soTStrXWANIsLQvlCufshyIVwVVa3h1/i/DQjSgBAsv1tifk5T/wCJSdIbyZrxSf
	tgSc6bWH6zRbv4k0covA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo7r-0000mA-Tj; Tue, 21 Apr 2020 08:19:27 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo66-0007at-3y
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 08:17:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id h69so6428388pgc.8
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 01:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R51EKoGdprYIzq4mz86f7ksK2LhT5dJfZ4/kQMPqWXU=;
 b=VzMHbZmGtC1cli7/MzDUNjXVYWUl1NxixqtpJm0/9P/EzaLVRa8g8WgYud0Qm6Rchk
 /0trL5SM2/Zrj2mYcg8pq0A+qXdeLRNhfMiAZsy5X8Q7FkKkUcxE3FT4l8B0EtAmdA+a
 qWQTbQU8+OIZBMPZCnCgj1bgpLATeorKYHYYWZhPAzfAJg7qSDI1mvGlLkPsXDXc0xmQ
 nHxUsek7TS8kNEMxedKCaVU/PPk6efmG7yA1N7bxrcxILkRxr4XHk7vAf799he9GgfVg
 ZXr8nDGGsq+0uBoSEWHxoMPWrO9TNXqLg4+rs5s/lfX6Mf18km5fSJ2iKKhhbu7/Mopp
 enAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R51EKoGdprYIzq4mz86f7ksK2LhT5dJfZ4/kQMPqWXU=;
 b=hf1EH8W9gGzggVmfeV4ZcqZiy+XstPOy1l0qMKpTrP0csNNr4cjHjiN7LEh0SrUQTz
 kFdWj3Xhyx4VVIOpmhme8ylnvR/TJp2NLj8BK0Xyoio8pnuNDsRGuusrKH2ndKTsqnYX
 zjOVOL96yDbPi3MNNvlDgL/XcnXfwYUmNMAa1PpG6WYtc/9I7BaZYA3xAfFqXrCjddsK
 hNT1MYYtozdf4djKeZ+hz+ZTM1JX5mIitnvjJDQNsq8JB/pF/upgkheFM+QKNETkSZnp
 LOCTPzXz/rSQsI5ZMxMJo76bUGgXllDJW8DmVGbWPhe2ZxnvEKKj48s/RYZFAGQaUX5u
 bKkw==
X-Gm-Message-State: AGi0Pub6KmYmWtetQR0nax9rfYM8S78PLbx92Q+RRgn7YH2oWisLWKEQ
 bSNxBMeGFv0JdeUA16s3fylNBQ==
X-Google-Smtp-Source: APiQypJD+fzqoCjmoNF33zw6GUvSp1zVm+GJEMjBcSfH6XjMDUyeBTOm2mgFujSrzxWUd3wuELt89Q==
X-Received: by 2002:a63:4e21:: with SMTP id c33mr21379911pgb.305.1587457056828; 
 Tue, 21 Apr 2020 01:17:36 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id v9sm1610067pju.3.2020.04.21.01.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:17:36 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: mm: use ARCH_HAS_DEBUG_WX instead of arch defined
Date: Tue, 21 Apr 2020 16:17:15 +0800
Message-Id: <e19709e7576f65e303245fe520cad5f7bae72763.1587455584.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587455584.git.zong.li@sifive.com>
References: <cover.1587455584.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011738_195306_F4940D25 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Extract DEBUG_WX to mm/Kconfig.debug for shared use. Change to use
ARCH_HAS_DEBUG_WX instead of DEBUG_WX defined by arch port.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/arm64/Kconfig       |  1 +
 arch/arm64/Kconfig.debug | 29 -----------------------------
 2 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..a16e2ce80854 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -9,6 +9,7 @@ config ARM64
 	select ACPI_MCFG if (ACPI && PCI)
 	select ACPI_SPCR_TABLE if ACPI
 	select ACPI_PPTT if ACPI
+	select ARCH_HAS_DEBUG_WX
 	select ARCH_HAS_DEBUG_VIRTUAL
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_DMA_PREP_COHERENT
diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index a1efa246c9ed..cdf7ec0b975e 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -23,35 +23,6 @@ config ARM64_RANDOMIZE_TEXT_OFFSET
 	  of TEXT_OFFSET and platforms must not require a specific
 	  value.
 
-config DEBUG_WX
-	bool "Warn on W+X mappings at boot"
-	select PTDUMP_CORE
-	---help---
-	  Generate a warning if any W+X mappings are found at boot.
-
-	  This is useful for discovering cases where the kernel is leaving
-	  W+X mappings after applying NX, as such mappings are a security risk.
-	  This check also includes UXN, which should be set on all kernel
-	  mappings.
-
-	  Look for a message in dmesg output like this:
-
-	    arm64/mm: Checked W+X mappings: passed, no W+X pages found.
-
-	  or like this, if the check failed:
-
-	    arm64/mm: Checked W+X mappings: FAILED, <N> W+X pages found.
-
-	  Note that even if the check fails, your kernel is possibly
-	  still fine, as W+X mappings are not a security hole in
-	  themselves, what they do is that they make the exploitation
-	  of other unfixed kernel bugs easier.
-
-	  There is no runtime or memory usage effect of this option
-	  once the kernel has booted up - it's a one time check.
-
-	  If in doubt, say "Y".
-
 config DEBUG_EFI
 	depends on EFI && DEBUG_INFO
 	bool "UEFI debugging"
-- 
2.26.1


