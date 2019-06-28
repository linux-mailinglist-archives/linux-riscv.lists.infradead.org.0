Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB1658EF8
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 02:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KcmdSH1O5W6WfVjH1q/Abhx8tSD8jOSvelmUseETpjo=; b=S6elfhjcJ/SmIq
	BvSxOu+RJGotI3CqGdeE0U+XrHxR7ZAx98qzmwiKJ730d47VwSq5EpWvaefZIW9OngyrFyCbz0rOB
	37rt1WYIDpc3VhhXn8YPq0q7d5NQhmomA+6lR7qurZi+XuVHDxHKLPPqXQ5q4JLrD0MpkFshdE7jG
	uWKL7RuzTNxDkb21wGGiF3LlUThfzmfFt/lJqZV6xT91p/8TZXWfCZcdZa0i9k6qcMmsY2Vd9WfEa
	NzM78XYCqQlIbT4zf2zUIqUY2kohok+TvE5SI1IfmR+Q9Hanu5UhwhhQTMqvDCiMmnJ1ta+T+PE0c
	h2sZzRqB3LynEAvHmroQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgekg-0000oj-5m; Fri, 28 Jun 2019 00:28:30 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgekc-0000oH-Og
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 00:28:28 +0000
Received: by mail-pl1-f195.google.com with SMTP id ay6so2165230plb.9
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 17:28:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=BomPkIzRMHtNhgTt9YOOvsPTPOOao9rvEJbBjPIy2x0=;
 b=RKqJrMiTGuCKaQ1/DJk0LWMPQgnJ/XHaEEjs6bTxhoyI3v3oqVbaK1nvPDnS9fPCHy
 Yypep2dnh1gqE8IEd2Jm2HD5LDHg2iF7CFF9CKq2ki+1I/ra+YS22uT5gWaJLE1Fo5nQ
 fGZ8+orJvfmXiSzJnuk+I63ZnMbsR9qod6fPKwzcrO+G/MuYN+vumBLFhULWQbdS3fcd
 +4kXK/oE/hHn+dTUjoeK0dXcrKgLDJpATbmJNQZBYGNwsOYzFwbSMQFaDLhQq3y/YsZU
 SqJ99zJIcIee6j6K7Ow7Qg0s5KHQPt4GaH5TzcKbokVxcpdajeaiRP7Yp9420qW17jYB
 GWfA==
X-Gm-Message-State: APjAAAXoj6s6k91Rvd/VK/dqye9myHtij6HrvKZ6dvL3J6NeTclqIbDu
 UBYq1yiayEAgxdGMNt8Wigyahg==
X-Google-Smtp-Source: APXvYqy5kZQtvpH0HuDeBDxfScn8wHazkdQ2pzR/buG34ccvL+ag+VVh/am35IllTvVGB4L622d+Tw==
X-Received: by 2002:a17:902:20ec:: with SMTP id
 v41mr7541626plg.142.1561681703695; 
 Thu, 27 Jun 2019 17:28:23 -0700 (PDT)
Received: from localhost (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i36sm238048pgl.70.2019.06.27.17.28.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 17:28:23 -0700 (PDT)
Subject: [PATCH] MAINTAINERS: Add Paul as a RISC-V maintainer
Date: Thu, 27 Jun 2019 17:27:53 -0700
Message-Id: <20190628002753.5573-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_172826_803902_2EF7B360 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The RISC-V port has grown significantly over the past year.  Paul's been
helping out for a while ago.  We agreed in person that he'd take over
collecting the patches and submitting the PRs, but it looks like I
forgot to make it official.

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d0ed735994a5..b54b23261cf5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13472,6 +13472,7 @@ F:	drivers/mtd/nand/raw/r852.c
 F:	drivers/mtd/nand/raw/r852.h
 
 RISC-V ARCHITECTURE
+M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@sifive.com>
 M:	Albert Ou <aou@eecs.berkeley.edu>
 L:	linux-riscv@lists.infradead.org
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
