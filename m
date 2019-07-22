Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD5A70BF6
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 23:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ze4V3DRebpx1nxSUBYS2EpCzTIYaVJxIxFxSET9xCzA=; b=WImQBTrjgfgCOj
	DT9f2IZ+EjpKE1JTqM4Dg6gymohA1EaD+QLohvP/6LT26JAPDSQgFcZ/QgDRupJVFwmYOPj+ZpJu7
	ixodgQA17NZ+EwaZvpnXHpXCpklbkdQ8GAeZV3Gd8VNB4qd2dpuxhBCiucs0t/feKz0A8O01Te2us
	X1mcFJemAe8vZm86e7TLOPcA44ic+7h1QvjCHvT82xe2jI2epkw70oXJkY9io3/e0A2EHzKjZiSR7
	hKd3RIkLZw1X9IneOI5jBHkKwpttDBus9ZI2dZGiU5WnIUnUf0Ff/pEJPuJhvZcNqhPFbR6/b2Pre
	aL1lvJe6ym0tsDVpxL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgAo-0003mz-5H; Mon, 22 Jul 2019 21:48:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgAk-0003ma-Nh
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 21:48:43 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so77345022iom.7
 for <linux-riscv@lists.infradead.org>; Mon, 22 Jul 2019 14:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=MNd1s/RK3q606uXXVJTbjFYHj9TY0k28b7cB1e/7MAQ=;
 b=MB1brrVu2uq0F45QssDCMFp8dE+S7FCP6t7lDN60jYhQmIfjMkzXGWmmi3kXOz3zud
 3WdjyM0+VEXASec8IoI9iUuYFkw6vnDDCm0F1OcreqlhgZN4yzXedLc/6WYFGCJewnHM
 m8uapPWOfQJawreTjO1fzmrLeqYvuFfJfom7Lq5mYYgLRpxRNii/J6z58qLjlD5dcfOz
 US9ROESCUbI1jO0cCkTklAaVXlSQYbiaYkE2D7LNmRcNJazb84NTwPnG83vVmYosRRkR
 dq6e6yfBx2sTbOu4SqzCEWon4Jv/glnD/edbvvXlwzlnHJ7GxrxAe2BPd4cvxxzL/183
 GcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=MNd1s/RK3q606uXXVJTbjFYHj9TY0k28b7cB1e/7MAQ=;
 b=K8+Tdch/8xzSVF6m9U5tYX9OWRTptSQbYSQlN311yZuV0jIR+WtWOg14fVfkH20gr1
 kNCi22QXCBCMOSz9Xd8JTM3cplWxdH2as01BG/2aEU4mzpVhSU3aAAAxgZEloITZR78c
 s9wsVnF16jpiyMc235Yj36WFH82ThakMYjyZKx9BZEOSNTxhpgWdALhf2Dvo7p19Iiri
 LzOeBtKXuwiNLaCgd6aOVKCGQNHkHkSEV0Nwi8CwrgYmkIdg7zHS5vHfam5XKU8gjCnQ
 41+AZ2D1EDAxg/DWRS3aFgvRvoglfcUBcH7d85Vuz/bEhZRHK3zuIf3XylPV1Ze3z2ug
 pH0g==
X-Gm-Message-State: APjAAAU8WoaLgivO+V9eaYKMgGpQ/VCjECb3EXCWBJ1IJj7zUCCuPqxB
 utrniIINP7DXBNcKaXHufrk32A==
X-Google-Smtp-Source: APXvYqxULiroOZ1sO9gKcnArywEPT23iTB5ofTsbzS21+NJj0kZoYkSm7Q/+HCczMOrY+80+gzO+2Q==
X-Received: by 2002:a5d:9b1a:: with SMTP id y26mr1829264ion.238.1563832121767; 
 Mon, 22 Jul 2019 14:48:41 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id t14sm34809856ioi.60.2019.07.22.14.48.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 14:48:41 -0700 (PDT)
Date: Mon, 22 Jul 2019 14:48:40 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>, davem@davemloft.net
Subject: Re: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
In-Reply-To: <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1907221446340.5793@viisi.sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_144842_772370_3FA86221 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 andrew@lunn.ch, netdev@vger.kernel.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, robh+dt@kernel.org, sagar.kadam@sifive.com,
 linux-riscv@lists.infradead.org, ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 19 Jul 2019, Yash Shah wrote:

> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

Thanks, queuing this one for v5.3-rc with Andrew's suggested change to 
change phy1 to phy0.

Am assuming patches 1 and 2 will go in via -net.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
