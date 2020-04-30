Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974641C0408
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Apr 2020 19:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IW4+oneEvAWkOsDviGfjkPQapL7Lb3e5T9feItSCKYI=; b=dC3XKp7M/K+RI4
	YSjZp5ZSY8pXMhHAkX188pKWbHXGbZ4WlAPwMlITJBtIbTpBDuoHOR7kDiPE8h9vnaqrlyXDXZ+Yj
	RKVgQ32m4dczNuIqAm5gyCF5TOyIzm9hE4WQQ49/dt/t9FcKcgPHJNBek7hKw9ly7it2WEt6WIM4y
	ALkcilrey5kx5F9UEG4PpU0zJwWgbSq5GPuG16agOYWEuWCwCR/gq/KSMoww0fzjnJ2E7PNHxGz7D
	9y7oPsQlmTZkde80z9N1nmuTCt/ceM+SMiM22W7GWe00qBXU2sVG6jiUogol08inv6k3RIAGW7HE+
	q1Enwn7+wpL0X6olFwfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUDDS-0003hB-21; Thu, 30 Apr 2020 17:43:18 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUDDO-0003gh-0Y
 for linux-riscv@lists.infradead.org; Thu, 30 Apr 2020 17:43:15 +0000
Received: by mail-qk1-x741.google.com with SMTP id k81so3894643qke.5
 for <linux-riscv@lists.infradead.org>; Thu, 30 Apr 2020 10:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IW4+oneEvAWkOsDviGfjkPQapL7Lb3e5T9feItSCKYI=;
 b=g6mJ7QVf09kvhuPzY4IiFoJ560v7yeRDHnCM6ZDWbwpnOsBo6+7zv2pLbUVAtITFYn
 L8IR6eY/EKZ43dH1uJAPmzmHdhWo1leFYokPatkGCK2ME88QeGdMAIxuUQZowt7fjPlQ
 Ru+G16lSTJ9ZtG0NcWbRQ5SOvoEVLbzA2FfCU733ko6a0e7CJP4ywgUYG4fML6Bb5elU
 6ysT4ofgB03RpIyfKQjmoNDXSO81wJetkTN3w4aSkvBWNqwWwwV+f0W7B0RdkLhzpCiX
 +Xn2l9RgGlpsDYYPpzzB89icqS+vBR1dbQl/ZOJx0eQbRr/zjfjANj3Hhqkv7x1PqqbP
 g0MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IW4+oneEvAWkOsDviGfjkPQapL7Lb3e5T9feItSCKYI=;
 b=t0x/cHAi8fUadQIxEy/Sxq8MNTzHQiQcd8BhcgQouUfO/0LIHv/9NGS9B2TzwgWRQf
 8Ex2RNqxUSh7PbwsiF+1YWa/nARBWde1l95ZUcXFwevWFKZgnFNA4pZY7yoeJQsu7vX/
 AJrIL5rEHZYtNCPmK1v3Jn8U4UPVHHz5mAlsnB2Y4D2Q8PB/aYrwHX0dHNdlVs7p3+HD
 OfXS2+7yUEMuQW9HkxuxKHjB7TMHIUnTxHhGBn0pyPJDjrNJKgXvFGx0asAKdy+/7cQh
 du7fuLX2E5YjbRfR736KeKHgi3bzDunDAfW6u0HE4kvXvM+dr8jocXHru7fYgMb8hJwl
 gXwg==
X-Gm-Message-State: AGi0PuYFy1BOfHxxjxBtz/nhiNjIQmR2FmZJmQ1rHU4ss4mQnvf2x0YK
 PRhTTTtdHU2FCWhDwcQYtgTaMw==
X-Google-Smtp-Source: APiQypK/FFlu9lluECG70Gz5FZSzggGL9pU5PcR/BvR8UNS5AToOVyS3gQQR53A0LgpUKwccIF/4mA==
X-Received: by 2002:a37:b3c1:: with SMTP id c184mr4761166qkf.194.1588268591752; 
 Thu, 30 Apr 2020 10:43:11 -0700 (PDT)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id j76sm537531qke.114.2020.04.30.10.43.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 10:43:11 -0700 (PDT)
From: Vitor Massaru Iha <vitor@massaru.org>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH] scsi: mptfusion: fix `make htmldocs` Warning
Date: Thu, 30 Apr 2020 14:43:07 -0300
Message-Id: <20200430174307.69233-1-vitor@massaru.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_104314_079886_17B52E14 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: aou@eecs.berkeley.edu, paul.walmsley@sifive.com, brendanhiggins@google.com,
 palmer@dabbelt.com, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

make htmldocs
./drivers/message/fusion/mptbase.c:5057: WARNING: Definition list ends without a blank line; unexpected unindent.

Signed-off-by: Vitor Massaru Iha <vitor@massaru.org>
---
 drivers/message/fusion/mptbase.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/message/fusion/mptbase.c b/drivers/message/fusion/mptbase.c
index c2dd322691d1..8e583c4873ac 100644
--- a/drivers/message/fusion/mptbase.c
+++ b/drivers/message/fusion/mptbase.c
@@ -5054,6 +5054,7 @@ GetLanConfigPages(MPT_ADAPTER *ioc)
  *
  *	MPI_SAS_OP_CLEAR_NOT_PRESENT - Free all persist TargetID mappings for
  *		devices not currently present.
+ *
  *	MPI_SAS_OP_CLEAR_ALL_PERSISTENT - Clear al persist TargetID mappings
  *
  *	NOTE: Don't use not this function during interrupt time.
-- 
2.25.1


