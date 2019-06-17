Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB134790C
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 06:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=w+dWEP5a9tRiYhPsIItoJSz5K2yakhVCCyUkwHdCnJI=; b=tBh
	UYTkzq/gpwAaM8uRm9X9YKucIDrfnYYhq22+CKdyp0uZ8scaARIcJzUz/MM743EOQvbiuqc7J44UN
	qYHgT8TFeRlz3p4FyKHsPWMnbvWhHJ6Oyvmj7v7crQmfTW4anTN+Y3Q9xXifrdJUM875q6HzFZVVC
	35c4bjMg2HbId3Dd9av5c+GU5jHlU0WQFfyKa3KRIwJ1xyn6M6ZVK52c34sVzezEx3fRz/t9cC+4C
	pEUMXsWQfvHTZ+l8+eas+UyXwN1MH+33zyn+d5TBTRoFYcBL+DJiiO9YYn3g+WvIIVIRpjsk2Lub8
	vCkDqOkEK1xxhwXYsbLrBMCcYrKyb2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcj7h-0004qp-56; Mon, 17 Jun 2019 04:20:01 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcj7d-0004pi-Ec
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 04:19:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id v11so5019972pgl.5
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 21:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=PzMic+UPAsRVZkkITfxZ+ge6idfcXfDdmr2qhDqY6n4=;
 b=WV5CpTWuXXki19nzu6N9H4WFS+1qFX4Zn9NZINa28o8wbNhwpfTRfiK1GElM4cY1Tr
 OXwKzfSGQ693mK5rBKum59OYO2Y/KE/N3/CBYGMGAj2tEkmmhL2LEVCNVp/ToqEwDUpt
 uIvKHLfQOxOAuR7Aym33NV5f0w8cK331vvlJ4Ixgw8MGbYMfFxzaBdERtR2DZ/VfG7ge
 BnpyGAvqcm9fWzqaXzH0aPqEWuOuWJNrwKmsTg/IPnitfm8/ic0u/w7uhRaak9ZVuScn
 H9pzpxSllmqXDtktC9e9QljAfuQV1BovQlbSOoJ4vnQCVmVOuOEp+6Ee3qRwTEoj1ylE
 gyDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PzMic+UPAsRVZkkITfxZ+ge6idfcXfDdmr2qhDqY6n4=;
 b=hi/RRuLeFse5d5mW2qKsvwhwQQt1bXqj+rXtd2I4cvgEf/8BdUxX9jqwBRgQqsIWAM
 E39kBSAbMYCEMX/okoqGCrD3YYGy2I7s21N9pEabf7a+AVFXo7SLAy6Yunw/9zfbV0QN
 +ysTHJuFazeaPZyPlGvp+riJlP0hafP1uub2LqPOybrwlRxRzOywuaN1YCXaoz4eGvh6
 rNdYsrQbHXHpwhfaDEOTkR0Tihk92WgpoNXkFSyqsXeFB3IIxli8xUx0DHnFgzLSEmXJ
 aPrqenP9v4BNZoyp5fdEd/YM6swKibUWBxcObAjYSS7Pid6y3PCS3lDz99ric418wwns
 lPFA==
X-Gm-Message-State: APjAAAWoivkz+3XMtTtUgjN/j389tm5WWsHlnh+uGbgikLQvII9CVCWj
 1IGszXjsL98RQHhUzbEdERTk2g==
X-Google-Smtp-Source: APXvYqxku2gBiJg02TLyfOFVgeYhsUcEMfbEDv7QwSe2WVsfh8XaKgPFs07+kEEOLES3+KCMvShowg==
X-Received: by 2002:a63:5c16:: with SMTP id q22mr15119353pgb.200.1560745194961; 
 Sun, 16 Jun 2019 21:19:54 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 e184sm14485615pfa.169.2019.06.16.21.19.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 16 Jun 2019 21:19:54 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
Date: Mon, 17 Jun 2019 09:49:25 +0530
Message-Id: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_211957_522212_622A761E 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org, paul.walmsley@sifive.com,
 ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On FU540, the management IP block is tightly coupled with the Cadence
MACB IP block. It manages many of the boundary signals from the MACB IP
This patchset controls the tx_clk input signal to the MACB IP. It
switches between the local TX clock (125MHz) and PHY TX clocks. This
is necessary to toggle between 1Gb and 100/10Mb speeds.

Future patches may add support for monitoring or controlling other IP
boundary signals.

This patchset is mostly based on work done by
Wesley Terpstra <wesley@sifive.com>

This patchset is based on Linux v5.2-rc1 and tested on HiFive Unleashed
board with additional board related patches needed for testing can be
found at dev/yashs/ethernet branch of:
https://github.com/yashshah7/riscv-linux.git

Change History:
V2:
- Change compatible string from "cdns,fu540-macb" to "sifive,fu540-macb"
- Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
  driver. This is needed because on FU540, the macb driver depends on
  SiFive GPIO driver.
- Avoid writing the result of a comparison to a register.
- Fix the issue of probe fail on reloading the module reported by:
  Andreas Schwab <schwab@suse.de>

Yash Shah (2):
  macb: bindings doc: add sifive fu540-c000 binding
  macb: Add support for SiFive FU540-C000

 Documentation/devicetree/bindings/net/macb.txt |   3 +
 drivers/net/ethernet/cadence/Kconfig           |   6 ++
 drivers/net/ethernet/cadence/macb_main.c       | 129 +++++++++++++++++++++++++
 3 files changed, 138 insertions(+)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
