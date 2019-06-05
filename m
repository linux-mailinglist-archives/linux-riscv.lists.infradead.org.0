Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECE8362FD
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Jun 2019 19:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QFuioYwKxqsnBp8S6CcSIhDZ0ZCqfitfAbx9AS/XmFY=; b=CMFI+xaM9YT7NG
	JSS+ZtyXwXw6A3OMyw5pFoyM7iUhqZS70aT95XvTXarJ2qufD5UvgxyfL5jxFcZcsE7yObCQ3lkya
	FyKZU1EuX1rylHuTSHYh6nVsvNIYOy+Xh9pCRotw+k4b/73S5J73+ljRgdeqfTf4WtaI9WiGfqmhb
	9dtyjj8H5ZRgvK/eYTWCgufYQ0Ek0M1HhZgxiIBySiK8mhYFNqhTPk3St+u+RAumN37gtB0eCLqPk
	C4TC+THxXID+KP4GADYYKBkRHr5+ZSxdka7ZvZhXt1DLTnXoVL7P/z3G2U9iJwNHsJxXr5pVcqXr+
	rgBZNw7HEtwfLAkwlQZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYa3l-0006tx-1i; Wed, 05 Jun 2019 17:50:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYa3h-0006tH-N8
 for linux-riscv@lists.infradead.org; Wed, 05 Jun 2019 17:50:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so12794394pgv.10
 for <linux-riscv@lists.infradead.org>; Wed, 05 Jun 2019 10:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BKkTOGYV6rc7HowFTZvE8K9UA+VQIzhyINAMJ9kdHbs=;
 b=A58mg5KvGYwm+JBY3RSS+1AD82Y6/IErsmfVz+hwmDnRrfIcKyTkZXJ+n5GC4KOSxx
 58ShR5prsog+E6KZmvxbfUojKwQCR9kzcfcZDj110/L2LQSbzSWQcYsqK92VDr0TasCY
 sN/YvM9py6T9rgBWWfRWDBDxoULa3vUO7HgSLBD9p+QxvlG903CtNAe2wI4TuqFff0w3
 UBBKzgvjjXxVlFAmnwUw4OYrddRtTxSLhBaQEdxH0jipTizDEJJOx2xqSYN7U8pQY/6X
 3bY6psXdI6sEZl3yCKIExSP2me3Ym9b+R1hiyh8ghrAOuy7i9DrGYdp/BljCRUL5jGqG
 RssQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BKkTOGYV6rc7HowFTZvE8K9UA+VQIzhyINAMJ9kdHbs=;
 b=sxM+Y3yC1lxa6zgrpVQnxvwkq8tHZQoFT02DtlHzkU00IUT0mnRtBxuFUZVWtgzXQH
 06UD34OLrX/NTz40lgNDEwuWexctz1fqgIuG1H2+i46y5bery79Vzx7YEiVqsLxAwIMe
 5kirIQhFOQiClwGgNky6+0eid8Vvnr8GgzKbyOdYBMru40OoPJbGnU391jG3PHDcSZAV
 dV2llT2brDHkOPx2ifBer5qvbON6Asp11+Id79P/ypHH/fboZc0hN83TYoJfQxLqW2nY
 eIH8jhZJKW6zV0FiuUtOAz9oR2Q8eP3t1545In+UejMaGyEzFmELpjS6Thk+rAqn47Gt
 1MLA==
X-Gm-Message-State: APjAAAVELb8B+5FPqAmxwIoc/98YGQP3r2Dh6C+WkPwFajwxcbrqjUH2
 xE6qrHl7SHmwnFlQHflhn54UxezN7hw=
X-Google-Smtp-Source: APXvYqzGIXQYJbJ/EW9Im5FYNNE63sdg510YUZvGCK/jMI7JQvTrBWq/YpqXuCCeNqPGEqB/0tbO6g==
X-Received: by 2002:a65:5004:: with SMTP id f4mr6334708pgo.268.1559757044629; 
 Wed, 05 Jun 2019 10:50:44 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:da9d:67ff:fec6:ee6b])
 by smtp.gmail.com with ESMTPSA id d7sm12013736pfq.0.2019.06.05.10.50.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 10:50:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH] RISC-V: defconfig: enable clocks, serial console
Date: Wed,  5 Jun 2019 10:50:42 -0700
Message-Id: <20190605175042.13719-1-khilman@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_105045_761389_3B63C3A7 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Atish Patra <atish.patra@wdc.com>, Loys Ollivier <lollivier@baylibre.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Enable PRCI clock driver and serial console by default, so the default
upstream defconfig is bootable to a serial console.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 arch/riscv/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 2fd3461e50ab..4f02967e55de 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -49,6 +49,8 @@ CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
+CONFIG_SERIAL_SIFIVE=y
+CONFIG_SERIAL_SIFIVE_CONSOLE=y
 CONFIG_HVC_RISCV_SBI=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
@@ -64,6 +66,8 @@ CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_CLK_SIFIVE=y
+CONFIG_CLK_SIFIVE_FU540_PRCI=y
 CONFIG_SIFIVE_PLIC=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
