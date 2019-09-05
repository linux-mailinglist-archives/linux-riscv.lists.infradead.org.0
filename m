Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986B1AA374
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 14:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MqSLd7pI3h6uQkZYAdEGUC8vEUj6e8HnpToBXCYt8yE=; b=lrU
	bS7irFunT+X16lC7qmDQ9bx66dBg/ZFscQy0tAQCK2yN11mKCvE01F67BQmfn5WteBfmx3zvf6aUJ
	cyuzPgyYwFCYU5g/CWnjsU1IlXlWL4zQc55wZyRaNe9Ed/FKDSakP2BGyBRrnmE3ToJKF4GeGdJBK
	A2KB5CqL0EQDaptdCk1ps8ctNOKMCh19NhXyEYUbvwP0gPyoqZNdatTnVhMRMZh3gFa6/scxexaqh
	R+sbIYeZuOsqHRHBDG9HhCR9Rp80JalEeQP2T7wbwmYrmZWn/3gDN+Zm/EPYHxq4ic/JuBOz1ZTof
	2Y8AL3SHyifuM9B6C+2Js5RQEGEqH7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5r9L-0001Tg-6y; Thu, 05 Sep 2019 12:46:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5r9I-0001St-6m
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 12:46:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id 4so1244940pld.10
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 05:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WM6rR/Cv0t68SHx1bqGl5X9yzZvLLjOLxbj6KRGyY+4=;
 b=oZv7yvLoJTDRZLo4oJSgW5Vbu9DBHBlz5VFNa2fGOc9gpMnxnJvAG935dHVoC5a+zN
 wTZq/ijBq9l5KtlmXf8ZeuJXUSgPp4WSDeJlO/1PbZw/uq1tfe7UmIfkTx2kY+dBJCFZ
 YcXtFXj0jhREzVkOWXBtLPNxGCfTEzNwdq9GrvE378KwHnTh2j6j70Iv1Hqqqd8dSmEg
 qNB34Q1xU+IcalAz4dBUjy0HgTvcx2urOPoxaxqccjCwTpcERUPcKVWsIkGi4Zj2G0un
 vFucV/QwJID6dSnkaC6xpswL0D92EbXGeq0GRlc5jlNDpSEt2MrEgRFJBW4DO3FlM+D4
 AvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WM6rR/Cv0t68SHx1bqGl5X9yzZvLLjOLxbj6KRGyY+4=;
 b=G8zEkfLFbavJmt9YcxPOk4pmJMMt5Fav90urdP6729lXIrBO71Hr93+clHLuGK2Gn/
 smXgtHT/Kqi7qtcMZpMmUFeXCm8f8ETjE6vTh1wfZ9LjGLieraLyD4P1P5uNT7O0flWV
 3SdiajA/jYm/cXJMDRSp3M7elpN4EfnjCa7BsBKaDcJ5HNYyXxLBS/u9p+CR/ZOKCjDw
 b7/6ETKnm7Z/49wgnlao9UtkOf2TGabnU7FTxeSf5d4G/Excp8wxuBDso4cU4+S9WVna
 7vdXdP2bCPwE9UVE0hFJLP9g2nvA9PXzq+cMQg34KFRg3SRdodQANz/rW5OSCOy6emDI
 jhgw==
X-Gm-Message-State: APjAAAW71p97KEJTKwKspgwR6UkDr6/W0eBRdWwFQNVSaJ16JrZzF7s+
 6JCU01W3q6JOO1ut0sCP8It6azsE
X-Google-Smtp-Source: APXvYqwvTeYV5QQ51gK9PVjIDtCbPQnpHl/4CKedsvgU0dSTpgTqXJIt44Kdo8iVLocqVuZPfMevsw==
X-Received: by 2002:a17:902:426:: with SMTP id
 35mr3251485ple.192.1567687560305; 
 Thu, 05 Sep 2019 05:46:00 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com.
 [147.11.224.80])
 by smtp.gmail.com with ESMTPSA id 74sm3412635pfy.78.2019.09.05.05.45.59
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Thu, 05 Sep 2019 05:45:59 -0700 (PDT)
From: Bin Meng <bmeng.cn@gmail.com>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH v2] riscv: dts: sifive: Drop "clock-frequency" property of cpu
 nodes
Date: Thu,  5 Sep 2019 05:45:53 -0700
Message-Id: <1567687553-22334-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_054604_251043_B3499ADD 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The "clock-frequency" property of cpu nodes isn't required. Drop it.

Signed-off-by: Bin Meng <bmeng.cn@gmail.com>

---

Changes in v2:
- drop "clock-frequency" property of cpu nodes

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 42b5ec2..a9d48ff 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -60,7 +60,6 @@
 			};
 		};
 		cpu2: cpu@2 {
-			clock-frequency = <0>;
 			compatible = "sifive,u54-mc", "sifive,rocket0", "riscv";
 			d-cache-block-size = <64>;
 			d-cache-sets = <64>;
@@ -84,7 +83,6 @@
 			};
 		};
 		cpu3: cpu@3 {
-			clock-frequency = <0>;
 			compatible = "sifive,u54-mc", "sifive,rocket0", "riscv";
 			d-cache-block-size = <64>;
 			d-cache-sets = <64>;
@@ -108,7 +106,6 @@
 			};
 		};
 		cpu4: cpu@4 {
-			clock-frequency = <0>;
 			compatible = "sifive,u54-mc", "sifive,rocket0", "riscv";
 			d-cache-block-size = <64>;
 			d-cache-sets = <64>;
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
