Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5068C4E059
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 08:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=se4y5m1zFPjeoDvlwV7hj/a/4/n+bYr48V/NOryxuz4=; b=PnC
	R1E/Ren+cu3Y3ZMmDB673JaoYnC725xQRRtowI7qYw0ADC8mb9lgs6rL4f2XF6krUNfELFYUShMKf
	xIji6EONZm21CrBLrnm4U8x/w6I9GeW4/q9LbApPi8dWHCN1eEJAHg1GLY+9s3zi2EBTIsPMh2tMj
	yRoEOTzeZqdN691qtJXBBC9m+KqqI+P9fCOtbwRATWsEag3JAMOQ0hi2/lRL1Sg7Cp8KE/gUP4lHk
	hcVrH00ooPLkVLO5Iww6em/JhQMhleTbM22KFU3oa8674w9j2Umn66Hb5PFZJuh3vhLsPyehf+w8G
	zlWhn+vfrJ6j1RIVZ3hcDAdTph5lLUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heCl6-0006eA-N2; Fri, 21 Jun 2019 06:10:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heCl3-0006d8-6p
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 06:10:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so3015105pfp.7
 for <linux-riscv@lists.infradead.org>; Thu, 20 Jun 2019 23:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=PpljmC8SLGkbR///XDkhntsRZdsmMvo/H3sw/I6A+Yg=;
 b=EdW+NqcLDpoZy6NvRMoxmD74pUzzt5PXYcRlmmEybEXBEoJoGrsC0sjcXC7JteWoAk
 met5tggjZVdSjqyNl03Wc4taU6vT2DYFO1c7gTi3i8P4wSP2BYH15enBj66j9xo0Euok
 3T4PzyrhZ3h8UQPbNBAC3zqAgtXNdCLUWC/ZHSdLt6i9cD9JU+/AhSxSuXsGRH5PfDy/
 /gEw2agtLxkl30fng4hU9XZPPAcEbFuHnAp3M20Ofc4mq95gRNZx6bft69ZB4h/jwgo5
 g79SL6OxLUSTEuqX+wVN1cKgEI+wiGql6VZJ4RA29H3BGQmHfZgM0rHNNFCCR0gbR6Zc
 lxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PpljmC8SLGkbR///XDkhntsRZdsmMvo/H3sw/I6A+Yg=;
 b=Zqg+yvNm20wTaKrPzS/mPN3JEzGGAH6OAlF9FEAUAXTT4O+lvQhrGvOWXXbqCC1Ke9
 Br8tXiAb0atX/HkixdEAAgoPEmbU/FyGvSvz083UNXkbKAZ1s10twGZgyX6QkjSWE8ik
 DnbGwBYXrj9YDCmO5M+/0nelOnztdSyFlVAorEfMH4dcJ3PVI90uIt59Q4IZsrLSJ9rQ
 ieVp4EMS8GkWodsK5ZIiQ+3/NT1UxftRQ/Yi5cspejUdzmGNPlrGyv8K4a+J3SnpYE2X
 So/tdBl5J1rTUTrksFVCeog2HCMEYJUBQO+v8V6JvF2RdCKyQqqo4ug+JRpDcceRCEJU
 Lj1A==
X-Gm-Message-State: APjAAAUc/mOrKbaFaHRBDY7N7B+9yGItlSa9sIS/ea5PAVYEicVoWzgR
 EIRm3DU9nQQSKylhVhGnz1eQ1dDGRjs=
X-Google-Smtp-Source: APXvYqzDsMUW7ZM0Bq051HoAYberjSCM05y0nHuvchc1Fadi0aGQa2Jg5EWR/GbdwYOUinaVk+lXGA==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id
 h1mr4272423pjs.101.1561097443303; 
 Thu, 20 Jun 2019 23:10:43 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id x17sm1450053pgk.72.2019.06.20.23.10.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:10:42 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, paul.walmsley@sifive.com, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] DT node for SiFive FU540 Ethernet Controller driver
Date: Fri, 21 Jun 2019 11:40:21 +0530
Message-Id: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_231045_314521_F366EB4C 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, palmer@sifive.com, aou@eecs.berkeley.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch-set is based on 'riscv-for-v5.2/fixes-rc6' tag of
git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git

Tested on HiFive Unleashed board with additional patches required for
testing can be found at dev/yashs/ethernet_dt branch of:
https://github.com/yashshah7/riscv-linux.git

Yash Shah (1):
  riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
