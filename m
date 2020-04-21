Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036B01B1FCA
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 09:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ve6GS3o2ZDt+6fVEzio9+oQztNL/K+BP4BCqQwsvGtE=; b=Ds9XdDMuv/BFfK
	XuUYfCa1HFG/iJxjGWi6lP7+LmySI60vaIajwtmUR0A5fRygtjp2wE06CIHkA38Rr602mHPWPMGwn
	YXoDYZKZu7wAHX+ljsnYNDq/cqHuv6Ul0wsEap+JY4pZ3Zjjrx3iLOxdHY40jbPkbgHO7KIEDsEz0
	CUE/xlSHgG4d2A5FrujQiRibd89zlCEtO5lFPeUbP89ZVNm9hF19Y2xk7IUJT2B4A0EnA9dAZb+do
	/QDudnB9+ubXJzysVAgWivUPmwRVVcsrniycPtC9v2J2/QQgXuO8GF/hJhLhbChOKb93uZVdl2COe
	t68Wey27VfWHN9dwXNcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnMH-0001GK-CW; Tue, 21 Apr 2020 07:30:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnM8-0000c4-8A
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 07:30:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id r4so6382552pgg.4
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 00:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ve6GS3o2ZDt+6fVEzio9+oQztNL/K+BP4BCqQwsvGtE=;
 b=OkZd0HmmrZJVRAmeOhR/6MDVes0T/k3X8lBGV919P9SVZveSI3AxIfxQlssEZrZdal
 hCXV8KQNcqqxLQtRlS6E9UT1p5HNSOEM/epjV+AHLtLe7D9b7ad6awx3r9sBBEs5OwOR
 7bbDYBdBT5IDzm85ciogP0GkGiawMB44Hed5Lla5Y1WdU1SKPrLpz4x8v76nLDcDcwWk
 KHs+uxP7swbiuMbrSpB5DUpzVC3SMFFfEuVkC4mAja5BRMyyWiVVx1wbrzzIv31bN2P7
 dP+1i8dKVK1hbUmdTR+H6YBZvzzysZMqlSr+VQuiiRP6UvcIGf4QBSlPPIzW9yn+8nuO
 yqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ve6GS3o2ZDt+6fVEzio9+oQztNL/K+BP4BCqQwsvGtE=;
 b=RB1fz6RebHYtOfVeOEur7KFcA5FJDBOIj78bHdOoCPIoJyws25jnCPow79iDYvwfMP
 OINjYKTm+I6+usRU+MMCPVsg5r3RcZSqrsZnmOBTqOlQd7fOUR2c33qxTxGWqdHT1Pba
 Td5PbhWzkNZhU7NuOkPtKrzCl74rP8zWbJrCRz6SH2LqDBUwinARpeE3oWLM8e3vY/iv
 3hp6+RUIX8dz52v2LgDViCCMFAnBF6DBEU5h5DlvdngNfT0h2Om4lV7Hy8c9vOpANwiC
 4d54tgQeSEEraG2v0JZOke4uIRaUb4X0JK6Xq7sTrYTBCfyZEizqC+pHpIkFTezHDc4K
 QzTQ==
X-Gm-Message-State: AGi0PuZq0DR5wJ1zUnVE0mK2I8KxL/8PtyUktDBhYkDyc3AfS9OYovTG
 jWnguTlRv/voYSWnRPAjoE4Iz2GKZvM=
X-Google-Smtp-Source: APiQypLh5UEKAA2E++U+a7qnmVHsLG28KN7mZCzpnTw5qDaTGJom/QtjwZn9RRwMmvo57Q8FRhojJg==
X-Received: by 2002:aa7:8a9a:: with SMTP id a26mr19188725pfc.77.1587454207230; 
 Tue, 21 Apr 2020 00:30:07 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id t7sm1535200pfh.143.2020.04.21.00.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 00:30:06 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Refactor patch text interfaces and mechanism
Date: Tue, 21 Apr 2020 15:29:58 +0800
Message-Id: <cover.1587453338.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_003008_515756_7A204BBD 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch set contains the difference from the newest strict memory
permission. These changes are suggested by Masami Hiramatsu, including
deprecating old style of kprobe annotation, lock protection and so on.

Zong Li (3):
  riscv: Remove the 'riscv_' prefix of function name
  riscv: Use NOKPROBE_SYMBOL() instead of __krpobes annotation
  riscv: Use text_mutex instead of patch_lock

 arch/riscv/include/asm/patch.h |  4 +--
 arch/riscv/kernel/ftrace.c     | 15 ++++++++++-
 arch/riscv/kernel/patch.c      | 46 ++++++++++++++++++++--------------
 3 files changed, 43 insertions(+), 22 deletions(-)

-- 
2.26.1


