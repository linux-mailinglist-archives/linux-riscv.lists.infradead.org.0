Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2FC1E1BBC
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fC0RUJXoKmGwPm/9ciDiJFpYYSjjNjdLU/HcVXsBjW8=; b=dJOUIavWa8bREHWetdv0KmzatR
	s1pXT57ZAKxC6MQcgyOyDEM/6bCawhAOIJNH1VH4+2iOlTp4t0oMwR/HTSuJFFIfNPfHF9OoRUxEW
	jt6BMTTO74Nx19WJs1445RnHw7I2/JpYzuGMHgqiOOEnMbiP2jQoqgybUrkpDLPfmYgtSqbty/FUv
	rOf3WRn9aotIGrOZ3XTGs39uct31ePl6VW7qVaazI5/qYt6ArgT4xCUskNaSDjA/R809IziGEsgin
	aTxZS0m16T9UDp500suzVF7UbaHLau9mZVG/pDP1UsTKWuATNgilmisq98VSTUkCym+iP5xzRGP7M
	haiYOXdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTcP-0007m5-9d; Tue, 26 May 2020 07:03:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTc5-0007P2-62
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:03:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id w20so4541189pga.6
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fC0RUJXoKmGwPm/9ciDiJFpYYSjjNjdLU/HcVXsBjW8=;
 b=myXzRI8vHTvuMn1skzPaxgHsAWGyE/YKC9onQaa3/nUUv0OantygxhQnmjREn4z41u
 gyqZUBWv646ooQYX+MUIGfHoE03hmS38E4f6yK3ht9Tgkmg2jZs8+QsWZ4G6ZbjGIgqs
 Jw9shadWDJDvbekhNoEQgrPxXzIBG5b9xH+R+A30aadarDPGgHY8rA7FiMmMQIsE9I04
 svK7h+B1eNycirHuzpnTaxILKe8uRP9PouC5DAECAjfvZM0ZAHNowK1WW5rNu1ixPvto
 NxtNLMPGuI5QezGB5iOg7Ly9xjnR8q67Gf7fjKnSKpZbMo+oOxCbajA37J33JlKPHK9i
 +8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fC0RUJXoKmGwPm/9ciDiJFpYYSjjNjdLU/HcVXsBjW8=;
 b=Q1GxImH7RLCm5ll3FyKqlwJ5rWOqOdtco7GLAtxzmjUhXdJxSWzw6NJzKFwETGZnPR
 3uRhxQJ8/IXX9m/ub1omXW0OLZphugBAqq4oV/8LUobaYcsa/YQ+TI5GMWU1iYJ+rqkl
 dKtsU9GNSH7Aup3JCaSRf3U3og7qsNKGJQEJWsdQJdum2sHIDWgA+tggk0+Vlckw6d7U
 1W3mq0oCwwDzjKfpQI6PbQMM3LmMC/kxlvAiSIl0pTkA82+hi8qnikOQo0ZmqigV6QoK
 Ij4OZeRnKbvYRrq8IfzY7EAz8WuVhjQ3GZPhmbLmtr/iC3uCzxyG7SA8uhEQGUgkk8ye
 nguw==
X-Gm-Message-State: AOAM533RakpKQbkE+lr0iLoc4yDLq2zMQE+5HYac179vcySpQ0lwSiid
 3cIPEUYCGzJ/sORhKCkJszQ0qw==
X-Google-Smtp-Source: ABdhPJxbLs8RJjoftufhwtlXW/MDHi61wqLYh5z4QBLCiJzyGQwGGz+patKM7N/4Ku5AJ4VPCCeFtw==
X-Received: by 2002:a63:3f8a:: with SMTP id m132mr5311368pga.225.1590476580339; 
 Tue, 26 May 2020 00:03:00 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:02:59 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 05/13] riscv: Add new csr defines related to vector
 extension
Date: Tue, 26 May 2020 15:02:34 +0800
Message-Id: <fe966314eae51a5089033f7186ac86c39719e0a0.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000301_244539_8BB04440 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

Follow the riscv vector spec to add new csr number.

[greentime.hu@sifive.com: update the defined value based on new spec and
remove unused ones]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/include/asm/csr.h | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 8e18d2c64399..cc13626c4bbe 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -24,6 +24,12 @@
 #define SR_FS_CLEAN	_AC(0x00004000, UL)
 #define SR_FS_DIRTY	_AC(0x00006000, UL)
 
+#define SR_VS           _AC(0x00000600, UL) /* Vector Status */
+#define SR_VS_OFF       _AC(0x00000000, UL)
+#define SR_VS_INITIAL   _AC(0x00000200, UL)
+#define SR_VS_CLEAN     _AC(0x00000400, UL)
+#define SR_VS_DIRTY     _AC(0x00000600, UL)
+
 #define SR_XS		_AC(0x00018000, UL) /* Extension Status */
 #define SR_XS_OFF	_AC(0x00000000, UL)
 #define SR_XS_INITIAL	_AC(0x00008000, UL)
@@ -31,9 +37,9 @@
 #define SR_XS_DIRTY	_AC(0x00018000, UL)
 
 #ifndef CONFIG_64BIT
-#define SR_SD		_AC(0x80000000, UL) /* FS/XS dirty */
+#define SR_SD		_AC(0x80000000, UL) /* FS/VS/XS dirty */
 #else
-#define SR_SD		_AC(0x8000000000000000, UL) /* FS/XS dirty */
+#define SR_SD		_AC(0x8000000000000000, UL) /* FS/VS/XS dirty */
 #endif
 
 /* SATP flags */
@@ -114,6 +120,12 @@
 #define CSR_PMPADDR0		0x3b0
 #define CSR_MHARTID		0xf14
 
+#define CSR_VSTART		0x8
+#define CSR_VCSR		0xf
+#define CSR_VL			0xc20
+#define CSR_VTYPE		0xc21
+#define CSR_VLENB		0xc22
+
 #ifdef CONFIG_RISCV_M_MODE
 # define CSR_STATUS	CSR_MSTATUS
 # define CSR_IE		CSR_MIE
-- 
2.26.2


