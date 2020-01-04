Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C3B12FFD0
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 01:57:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b+wuHQ8PY87+3MWTpA3gpEZGOy/6vHnLCLuwEt2do7E=; b=FBzlwNr7d4DTZqDpTCNsevDNc
	pbn493PdXwTiWtIsbuDaxnSS9dL9tcdTYNwipE+jsEUWMaDiTSqgD0JsEnXBSe54vUQLbn8xkXcHe
	YX3V6JbocHBTDPnD/oJfCNA2ENJCGN8d2kxaheADdWcoTZ7M3Ey9NelrTtZdLqIF4DetEx3DZDDmW
	KQaVBt7rkn8NAZiloZMCOXwznnFOiBkBwUDJqDxVfB6+tRu+EqOBxryzFG040xG9PQEdGrbsrPgUQ
	jPoMj4k31b9opw5NqVw247S/J54E27wvb6EGPaOu7hqRRIqCiKWSEwn/uEbusI10raKBd0kmZvuqS
	Gu8hcRfeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXku-0003P9-GC; Sat, 04 Jan 2020 00:57:28 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXkq-0003OS-QL
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 00:57:26 +0000
Received: by mail-io1-xd41.google.com with SMTP id i11so43103382ioi.12
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 16:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=b+wuHQ8PY87+3MWTpA3gpEZGOy/6vHnLCLuwEt2do7E=;
 b=Tbg87j3PPOxRwH8JxWZAOHbZ7f4QtLAtll1DFSLqMkgtkejmVljEyaZAvUYGhd+4g6
 zNJwD/wKPRtFOJIwq6Oy5+IdNFZE7zFUJ2QtI1zd28eXSHAMDryCVQz5J1bCTzZ9sGs0
 FqjJgTYnvuFhY9CfAadApuFM4em8tVji3+AdPj/2PygzSbhGkLtlv9IcAPacjhO/l4m4
 tmF1V94guhSb3MwEsU8ucXTsrzCWuKoXGykSExUKKf5XLKGJB3aDJL2H9Abfig6Mj003
 gvSBb3KisEINE5XZjcHD+2K2xqgIyX9buiTs7ljvpXPrsQxq4CR7GcX7C11bK7WK+40D
 FQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=b+wuHQ8PY87+3MWTpA3gpEZGOy/6vHnLCLuwEt2do7E=;
 b=IwOiUsaew+N51265c+/zFI6OhndBWAiblfZfUslbamrsSv7/hd13qztv3TaLc7NvWl
 2NMKaes6ozQQzakNmZnGCgpn1HGoyTgCsopBzi3ahEe6RgRvo9N5LdQqfYxfSrYzd97e
 qjnq466pkAjLzpxW7h1QFMsaIL5FI3SVdYuy6KzRwcuA2mIJMuk/8Yxhg5vA7R9C5D12
 7gi+QONHl6GzjjvZGKmEDeuUQVUeSS82pwgrT1foH0ZzDerDZCbOkdGOdazobEtbbwW0
 QtC65vDYaTV4kHzyI48tb+RsPBWP7CyYcMJtOliSRRzwayMbgw7y0r1Bd3UAGIJUr2qb
 uhGA==
X-Gm-Message-State: APjAAAX2Gd1r/09AVwbPf9pX3pjdi7c8Vb5q/TqTHYUXM1fMgh6JRU+b
 y1Tf99zWr61pwDBGQpWiZSsoAg==
X-Google-Smtp-Source: APXvYqxoKvk5Vn7dmhmcyOPjvml/ezHr0AEAtcLVuPk5lZbITAeIHwlh1dJ9a+dwdwHhO3WBbhK4ig==
X-Received: by 2002:a02:778d:: with SMTP id
 g135mr73473365jac.115.1578099443247; 
 Fri, 03 Jan 2020 16:57:23 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id f72sm21519402ilg.84.2020.01.03.16.57.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:57:22 -0800 (PST)
Date: Fri, 3 Jan 2020 16:57:21 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 1/2] riscv: dts: Add DT support for SiFive L2 cache
 controller
In-Reply-To: <1578024801-39039-2-git-send-email-yash.shah@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001031657090.283180@viisi.sifive.com>
References: <1578024801-39039-1-git-send-email-yash.shah@sifive.com>
 <1578024801-39039-2-git-send-email-yash.shah@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_165724_992111_895421E9 
X-CRM114-Status: UNSURE (   6.74  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 sachin.ghadi@sifive.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, green.wan@sifive.com, alexios.zavras@intel.com,
 robh+dt@kernel.org, palmer@dabbelt.com, bp@suse.de, tglx@linutronix.de,
 bmeng.cn@gmail.com, linux-riscv@lists.infradead.org, allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 3 Jan 2020, Yash Shah wrote:

> Add the L2 cache controller DT node in SiFive FU540 soc-specific DT file
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks, queued for v5.5-rc.


- Paul

