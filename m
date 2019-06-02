Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03F832295
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiXWsaCYS/ds5WByT/Y6oKcFBoUOFeDflX9REXZxoPo=; b=fNqhdZhN1stskr
	2y6HYCvhp9aA6jPwkM7qrsqA3elHaqSvhHGm07sT/yPo0VCKLsBBalcyikF/+r6rpVgy6bH0kzcbZ
	Qy8F6XwwRaHXpQAl7FRaEJ3nSFV+O+cnW7sFK3Yq80LZCPx/SX0m+cT08SuHQedDAUSbSEdzih6LZ
	4vK7wvxW2Vq6jYvPCSeVrMvxgchYvxVJP6Y/GvLQgNIfmMJpEn7rZIbQdBy4q0HazuAJEUDLmbLSj
	54XONUIVlMVWs5rRUEciFOjOa7Xaj/EXEOUoQUvHjkW67dqYt0ZwArv69gPpmrnIyFg8G1l+MZnkv
	/BAAiJM+uUokGk0ZjljA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLQv-0003G0-AQ; Sun, 02 Jun 2019 08:01:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLQr-0003F1-8u
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:01:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id r18so175226wrm.10
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lVmMBuEiI1TSAqk1FfU1U7RUZqQknARWWYl0UzTN3/Y=;
 b=h7gLVYnLm/kUsn4wK95+sL2SBMrx+hS39lImfxCL7a5t3aAgMWd/a5XIETxd2AlQcO
 KjWBs8hXvdmlhMKUwemrMqwjSbptuo/FwJsVn09PULAuqWbhDtTFC4RtyFsFvjOLUaAs
 oZIIsIIgJW9vPhHR9F69zppcNkeFPjZdgv0WtYca/KsgRmscfX4rAAPsg9cWt9sNrFnK
 +r6dTHRhy81CsFlU6DIF0DVPKi88seXGMQbPQNkYytiUxY5ga3p4tZw3rdC0sO3n7jNG
 xB/Ra0o8YipjZ16UApgRWEDcRWUWQaZ/sYlL/205G37BtlzqS9sgCoA3jnxZlY9xRUYe
 IutA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lVmMBuEiI1TSAqk1FfU1U7RUZqQknARWWYl0UzTN3/Y=;
 b=bbYbg7cvp7qAHZ/4avP+3y0XDDwG6PENd0fQeyLdJ8A3HyfMq18Wsl8dliGDooK8GV
 +Ixy8BIZ1cmYvQ2wvgcoj9lbee3BOXya7Zc66cCkW8+bxAPrAw6cHPdH2TuOYdgqFB51
 xTrM1GQ+J+yPto2vroHpypVMuBDwsJgQyZlxWAhM2idj9Z7mFjSNT3fjkn5zxR9zTwjt
 BJ4Yv6XkZnsFAGK04RD6lhmOTm6toXuGE31/Fj1u+zHevEm9gd5Hdjsfk9L8qSpawDKN
 9dtT7UBjeXS6E0GFOt4NtOXviptoOLMEqo9iAUOnPEGw4P3MRg2bBWvH3chgU/u6O2OZ
 mTJQ==
X-Gm-Message-State: APjAAAWgIiiKkA4DfZHnioJwFRzMDCzIN1EtabtgfgcAwECQRqEqc8O+
 I2qIjFA6LOGCugfsBM2iUm74uQ==
X-Google-Smtp-Source: APXvYqyzl0GBenPZ3PBEvpnd3Q3e392pV9ArIPE/Ls+QOYf7FH+9zlK3H9nw68c1OfcLmBth8HdTkw==
X-Received: by 2002:a5d:5348:: with SMTP id t8mr12119924wrv.43.1559462491760; 
 Sun, 02 Jun 2019 01:01:31 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id y133sm4868583wmg.5.2019.06.02.01.01.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:01:31 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 1/5] arch: riscv: add support for building DTB files from DT
 source data
Date: Sun,  2 Jun 2019 01:01:22 -0700
Message-Id: <20190602080126.31075-2-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080126.31075-1-paul.walmsley@sifive.com>
References: <20190602080126.31075-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010133_332300_0CB5535E 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Walmsley <paul@pwsan.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Similar to ARM64, add support for building DTB files from DT source
data for RISC-V boards.

This patch starts with the infrastructure needed for SiFive boards.
Boards from other vendors would add support here in a similar form.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
---
 arch/riscv/boot/dts/Makefile | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 arch/riscv/boot/dts/Makefile

diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
new file mode 100644
index 000000000000..dcc3ada78455
--- /dev/null
+++ b/arch/riscv/boot/dts/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+subdir-y += sifive
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
