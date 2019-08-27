Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084789DCFD
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 07:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=58iEPJ+BHDp0Dtd8HLvs6M7MqffhjXH7kD4lAFY6jM4=; b=NvW
	2yC8EwroMz6fa0AeFCWgaGf1S87pY7CAXCqJbCIQu+r5rh59soSK9NjGI7FgDfFX6asx9Jlk+UIdh
	JZx4lcmzwXFjbNpl/J/S1rrDWCqxdMsVslME3C9+3ACnIVaJnMpPqnxmCB6aBMwEKuDbDoFSScYoR
	zzLnAx6SQa0w1f3dHxQKdspcJxMtl0ZkseUGeTPL1vNEqxzS/HkrT1oY3uuclp7DwQvo8gis+SomN
	QmYaUgpe8Euz7YIzoG5g0V6v/b0OHjDM+Rq9rsTWI8igsgYohQb9wwuXXqhcMt+etEqY3dDapO9FN
	yc8dxVuP/TTQPgHY71V2rhMx0nV4+ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Tgi-0007Ix-5u; Tue, 27 Aug 2019 05:06:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Tgc-0007IW-Fw
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 05:06:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id l21so11936962pgm.3
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 22:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=bk+JaA9Wm7oz2NoF52hCcBz04mg8rRkowz0Je01pv/o=;
 b=ACmTv+sLluHVTa5psjJ02RKShK7i0i9u1wgYGE7mrIr27NYnWxyVpGgxOzII3/NkyE
 dcoF0oVkDA3ndBTXpDNr8h+v5nvKj60M9IB055E6ZLm8qKCtCdTHLKRU7m/4NeGBFukc
 rHO7CjH0RFgBg4lMAavNeYOr7y5MuBhvmKspsGrtop7wf6QqmRhh03Wc39j197QoXCSU
 i3XIUBDvUp73QKxExLUVdEYRU0e6OKJyjQSbc0rRVtpLYQRIjhNxX7u3Ie5e8vh8bkmB
 BGteBb35BoV3Sd1/lVG4AnrWhtD9XuEksL6oFgBBiLn0JRaayRVtCgrnvS5UOQWJ8eI1
 hgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bk+JaA9Wm7oz2NoF52hCcBz04mg8rRkowz0Je01pv/o=;
 b=QcPI4CdZPyNQIgEnJU0iwJ9YmqAmvYuismJ/8EJL0Bquqg8jk/KOudxzdVjWbVt9XG
 3zFCpZEYI+Ar4AEICRhqHmyE7FS1joeYRKzaZAe+fcQuXrkVvTq6070w2FUYBw4nCvLj
 RlbHod8eKyB7HQfVthj9ZXk74A0eqOqmJ+Ggsp+ty39zErmYzRgfzENoXzWDiGnOljq6
 trWCdZ9YT2U1DUftCj/B6UV9H9BSaSrjxYcQcdzLUdLS75kbh0jh86I/7YW5ukL2JeqL
 G1cFpCs48dcCQKSUABTFcL9vFv/RlS03xC1ZYexPm27zpjLeKF/VrE4odS/e5p0Fqj9K
 BQnA==
X-Gm-Message-State: APjAAAVYmMTYPi58O92ZVIsO8Gdf/KctEuzZ7XEDFsipLFpRsH3AdRQG
 gVZYijuLs5C9P35EuoME+6SMQQ==
X-Google-Smtp-Source: APXvYqx2+mfszF4XOEdf2VyJdPl/56BfxhDiG//VfH7sfIzgWmV7i6pR1y1dd5w9xBmLxpAPPz0suA==
X-Received: by 2002:aa7:9e4f:: with SMTP id z15mr23349159pfq.89.1566882389075; 
 Mon, 26 Aug 2019 22:06:29 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id q8sm896414pjq.20.2019.08.26.22.06.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 26 Aug 2019 22:06:28 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 0/2] Update ethernet compatible string for SiFive FU540
Date: Tue, 27 Aug 2019 10:36:02 +0530
Message-Id: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_220630_602306_662E8398 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, palmer@sifive.com, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com, ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series renames the compatible property to a more appropriate
string. The patchset is based on Linux-5.3-rc6 and tested on SiFive
Unleashed board

Change history:
Since v1:
- Dropped PATCH3 because it's already merged
- Change the reference url in the patch descriptions to point to a
  'lore.kernel.org' link instead of 'lkml.org'

Yash Shah (2):
  macb: bindings doc: update sifive fu540-c000 binding
  macb: Update compatibility string for SiFive FU540-C000

 Documentation/devicetree/bindings/net/macb.txt | 4 ++--
 drivers/net/ethernet/cadence/macb_main.c       | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
