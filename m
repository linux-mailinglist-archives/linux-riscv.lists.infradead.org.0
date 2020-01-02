Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6299B12E24D
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 05:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bbgsowQ5+lVOhOfUqtpuA+e3E167ANrpnE8X0bKC0g=; b=HztUxRO8ZbyzxV
	NaR7sEuQFvFSL3WpQcFa9Ug4KCh+eaXdDOc5P068RVSmFz1IiI9zQLb7M1OFOgnP27r8nvssRJwnI
	JwNpqAOtktJ2ZcjnyO/srgT/RURMicU+W9Bi66Q4yxe9NO385mrosc8oNq4T7ug9WmettbYtthLlf
	IYGw/ptqdNMZuCLSWQiX0iIba4kbzmORLPgH2AaQnCY0fCFmozanIANvWD1kLojF2N046s3N6lSGk
	qKRrjAmrRDwGPPSGf8RZMM6czfD23hMooCOZHZuHqoBN6T/j324qupxyq9CYCaGxZrXcKyQUhy3MZ
	aC5fzFpiZ4mMNXHegHAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrtM-0004G2-GJ; Thu, 02 Jan 2020 04:15:24 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrss-0002g4-Cn
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 04:14:56 +0000
Received: by mail-pj1-x102b.google.com with SMTP id t101so2814612pjb.4
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 20:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9bbgsowQ5+lVOhOfUqtpuA+e3E167ANrpnE8X0bKC0g=;
 b=Zg9cDaV7N19Y6I1moTjZo1qON5h298DxtazReyg3Tekyjukt9pkNmMwXrK/LX1mN96
 lGehPsG3zUAAyzO7hAFvIuzDx6XQTM4sfgAK1Laa6jawdO9Xb58WzPnQoTDNIXFXdVTP
 K5imQ66p5cfelyTKPQDlRujHbHkUeKPVPH4oG5hSd9ZvF2o4LaRroJvDEckQL4H8AHu2
 QyiaNcfBK7NL/a2mU8UuboY7NxfXGumoYMbr5mKIvnBdkOymyWMN/4iO0vBVHE1PE1+C
 jYSEbwBkXNYqrV1h17Nm+3JeMlRKsfvZqwuRSilbEDvIIWd+R/8kLoqSYeCdrt1XjkQu
 hLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9bbgsowQ5+lVOhOfUqtpuA+e3E167ANrpnE8X0bKC0g=;
 b=G6Xs4pQ/SYxIWM9QDUYk151irHRWvyVM7+wqKRTusIFSXsMQ11MIijSSvrqALO4X/G
 fqcaQ0Wad3P3Rb7u2AYq/3g3/z0iHJs1i3v3bNf1tROfjdN/1iYBOqn6UPaKFLb+ou3R
 ot1tOGQVA9XvijY12SM4CTWQV7ERktRmAuTlxLv+1JgQ1RKrffdLnkZTIKSD5ZszJzQR
 CZn+rtc5ZUpAPzRlNYtniP0KJQvkQkf1vNSd89MV1xbtQH4Uhkm6bBgZTsnEZdMr8z54
 BmVJgWYuGCzkB/Z1klBOaX9STX7zkkusgclbzW0ubLkkaRFcPa64Z57vqh2vpnaDQ3N7
 Cd6Q==
X-Gm-Message-State: APjAAAVES43ubKkGxXgO6HDgHJJWNj/7jcvwhFb+kzCIZksAuihm2NnB
 YEbIjTWGGEO9jBOBcL7xC8XHPQ==
X-Google-Smtp-Source: APXvYqxYkibkbhh0PBASLRj78qLynYNXvqwFv8n47/PTpSXnRACFhCipit9e0okQQfgdKbYOdlmtOQ==
X-Received: by 2002:a17:902:7484:: with SMTP id
 h4mr80682969pll.74.1577938493386; 
 Wed, 01 Jan 2020 20:14:53 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i127sm63870336pfc.55.2020.01.01.20.14.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 20:14:53 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, anup@brainfault.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH 2/2] Documentation/features: support gcov on RISC-V
Date: Thu,  2 Jan 2020 12:14:45 +0800
Message-Id: <20200102041445.98195-3-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200102041445.98195-1-zong.li@sifive.com>
References: <20200102041445.98195-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_201454_475337_D2BEEC9F 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Change status to "ok" for RISC-V architecture.
Lightly tested on QEMU and Hifive Unleashed board, seems to work as
expected.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 Documentation/features/debug/gcov-profile-all/arch-support.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/features/debug/gcov-profile-all/arch-support.txt b/Documentation/features/debug/gcov-profile-all/arch-support.txt
index 059d58a549c7..6fb2b0671994 100644
--- a/Documentation/features/debug/gcov-profile-all/arch-support.txt
+++ b/Documentation/features/debug/gcov-profile-all/arch-support.txt
@@ -23,7 +23,7 @@
     |    openrisc: | TODO |
     |      parisc: | TODO |
     |     powerpc: |  ok  |
-    |       riscv: | TODO |
+    |       riscv: |  ok  |
     |        s390: |  ok  |
     |          sh: |  ok  |
     |       sparc: | TODO |
-- 
2.24.1


