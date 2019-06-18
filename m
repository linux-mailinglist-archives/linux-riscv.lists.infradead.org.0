Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98A949B98
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 09:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hiwUcszZVg+PzbGbDimzYbEY2SbKd17aPVayazbajag=; b=cbp
	X9THtaJR/iFP5SOjlZVn+JjDCMHJ36rhvyBsYN64ZuyfFXX2RHlOIFg3DNz0un1itQ7vohk5tOTrC
	/8qgkdYE1FMsLyno7PxzuFWtFPNpp5j74xsur9QP+T3lEtDKgZ6fqQkdmrz+iT6VMW3+P7HDBkjXW
	QMdJs0rvQzlMKFCR/4mhzRgnTnPzpUABfaYG5mW/vfg+luwSTNbyPsw5qUs8PCzk4tnlP2KTJ01IL
	PfuzxA6GNDLvC0QTUtRiWASa4i+cPV2eGs145mDXHgK1cWPg33Uc/jHhnfylpv7k4Fr9fMJO/ExhE
	LwU3NqAk/esojZnank40TI/O07TGzrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd90v-0004Ua-ME; Tue, 18 Jun 2019 07:58:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd90o-0004PZ-TK
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 07:58:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id v9so7209486pgr.13
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 00:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=bxoc5/YWGBSJZWeOJnUb4ABn8p6gJT0nStCBWSa2eA4=;
 b=ngLBMMPw8YFffR+8THORT8LivSqIKXuvMWgEh1bCZb5ASHThP8ifiVQ6GzM9xKwr5k
 gJKt8WKUo1+ReF+bXeawLiDxNZoizIU1MlzklfUyZexrj5DvjcyB5Gkt6SLITCqfq0w+
 iYyrOFndZb3g2KH23GJOQZGa18+JsA9VHIuNdATXs3tvaU7IZPXAIe8fUQ6A0bJaEgFU
 35LQbWYuNSZPjQ2RRXnbbkMypJ/63njJCnm2RhsAvKZroy1QRGs4E10wH8TnGiaQdh71
 NO9mO/MrvrowbLlz4zm3GCQlI6qpZ662yWwA+iIljNm3AnMLpImXOzep1Sov08WO+Y7f
 HK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bxoc5/YWGBSJZWeOJnUb4ABn8p6gJT0nStCBWSa2eA4=;
 b=hqSmq4FDZ1TDlGzynud0BqGXV1alpwVKz1Oh0Xg+Wol4TIsa7Xg4fj0eQ5gIzXJh4K
 cE5bbvQ6KWpDPIt0m8aYLfDPzAXgoyKsL7FYEH7Gg7ZLVShj+qda4+7UjpnMHP4WfrTj
 EWL60i1KvNwUmpcbxUsMTng4iFnRqkoA4JjkZHd0UTX0Pxrj28aIS4Wj9FrR+TzkhVfA
 x0UVNDbU+f0TRobqSCf8PWEjAi2hRbDvwHPWHfPy6Yl5usFazi4UG8PfaxQxTeTjuxKF
 +kcWaAL2JoZHDoqDgJM51bAUKWCHvVCrStq4HkIoFq2f1oAWtuxg9WpeZbV4HQGEOMfJ
 DKFg==
X-Gm-Message-State: APjAAAXhyzsdAL1mYzKc+tQUw36JHUp1ZeTfLQmdFvirNDNzhKYONBg6
 ZIPb2VscKBw2IucRBmzhScBoGA==
X-Google-Smtp-Source: APXvYqz/EVWywUMWL2SlfXAU0IwdSy+Z2HHT9wFgROaskaDuM2vV5C7vCPyzsyqhoQhb1O8tRVNfLw==
X-Received: by 2002:a63:a044:: with SMTP id u4mr1461003pgn.316.1560844717487; 
 Tue, 18 Jun 2019 00:58:37 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id b23sm15780499pfi.6.2019.06.18.00.58.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 00:58:36 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/2] Add macb support for SiFive FU540-C000
Date: Tue, 18 Jun 2019 13:26:06 +0530
Message-Id: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005839_043236_69C26C02 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
found at dev/yashs/ethernet_v3 branch of:
https://github.com/yashshah7/riscv-linux.git

Change History:
V3:
- Revert "MACB_SIFIVE_FU540" config changes in Kconfig and driver code.
  The driver does not depend on SiFive GPIO driver.

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
 drivers/net/ethernet/cadence/macb_main.c       | 123 +++++++++++++++++++++++++
 2 files changed, 126 insertions(+)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
