Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DFA1E57B6
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 08:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fC0RUJXoKmGwPm/9ciDiJFpYYSjjNjdLU/HcVXsBjW8=; b=ORW4VlwbKsQoj88t39qgd3DR+T
	K5b6W9Pd4bI/UgkkgbJROkuyJA/X14HmR0h/PZgcoXzPVwSzvctymormeQAOP5tkoZuFz25MPHYcH
	XMXsOUTHUKleBPANRV3rUOMdMOtxPnGXic2v8FtHh5dBHozjMXcZkSRNWvcHk+PSa2jnZy6YCA0IP
	+oM47oEhvCJviM1tpamS2HE5SZ53kMJdngAxWhLSAR2IdBCOfyPY1L/tpaFmHab1HkFKl7hZrLGQ+
	X/0B/LgNWxKeaopGE8M7jdPA/64OsmZDfF8k8U6Hwrryy1PZgH1oQfwiTW1UTG7R7CD7bXEkkSWzB
	A3AtIwhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCEL-0003ET-Oy; Thu, 28 May 2020 06:41:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCEA-00033P-Gy
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 06:41:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id m7so11126992plt.5
 for <linux-riscv@lists.infradead.org>; Wed, 27 May 2020 23:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fC0RUJXoKmGwPm/9ciDiJFpYYSjjNjdLU/HcVXsBjW8=;
 b=aQFJByr24EianeyilXbBPU5NMEkCsXaIesfejM69/UAdXLxk9743E0K01CU2/XDoeu
 5SMSUvyjqAqyiTO/T7Wkb7nZ4C+fut5RZpHs4OV8MW1W5c2wJo7R9tVWP+Zj5Cu85kDl
 ShoLpRGSQGzRH5qNV0cVYzhJ+dAHxL/R8F6P8DSG5N5lRuRNRCbaoDE2lNU2I7PQ4K4c
 zxJt0B59DrVdGdaP02PEGBFwRjmyKwHv4u25rZKnApaPEdaS3qcVxjA2djSQV1BasDiO
 73MPFdhZDV/yxCeG9n3Wa3uv0It7fhEpDBmgDqzTU5gmBtmcQc/HN2RxS9awgin+Tszp
 m7/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fC0RUJXoKmGwPm/9ciDiJFpYYSjjNjdLU/HcVXsBjW8=;
 b=D8ENS/QsAwI+Q790nf1XddushirA4VkvtmjCBWXnM8BGGk1L1gC4VYroWrJxuDrj12
 6Kxyi5XNXHjwZGnTsS86Xini3WNoc0uMXJPvbulxOgqsCHtEH26vFpd3p7/G11veD4tB
 69ZCNhlg9Eik3O0eyf6abaEPmVW2rao7jNqVfooXizAXWK5V5kAp95XLZ5aRCpf2uhiG
 iXMP5Bwekq/YMCV67SGlwgCpStzPH7XBm171jAqBeRkKgKjuvk97vrMqtuRFF8zLTDQJ
 IMQbI25GQKiDEf8/o4o3pE+ySUjMtU+yVat03eLbuz8q1CJjCmbjVm/seOrtXVbP4QGF
 RWZw==
X-Gm-Message-State: AOAM530jOO8IECqq4wqkpjvTI5Mf+FMGbEE/3AYOuIpCD8pVuVhQ0FjP
 xYOkb0jItTsAXseVOHOg3ZcIbA==
X-Google-Smtp-Source: ABdhPJwW/P4SJ4LYsKoqp0IU6dhl4nw3h0gsjDhLvHZ7slAFYi6AV9hjFG6GqKsuCmL5LcSeL/BanQ==
X-Received: by 2002:a17:90a:d191:: with SMTP id
 fu17mr2258020pjb.228.1590648077687; 
 Wed, 27 May 2020 23:41:17 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q29sm3773366pfg.79.2020.05.27.23.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 23:41:17 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v5 05/13] riscv: Add new csr defines related to vector
 extension
Date: Thu, 28 May 2020 14:40:53 +0800
Message-Id: <d17991701f346749eda2ad3d295ac5788ac89af7.1590646208.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646208.git.greentime.hu@sifive.com>
References: <cover.1590646208.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234118_578571_7BECF6D9 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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


