Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA4E383AC
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 07:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7f2LlCRTYQcBeCYMa4qFUrpOkCUNH5BdjbbqdoneNPU=; b=iQUzUlHcWZynRg
	5CNNeyDGypJpDSz96Y422EkMuWkYhQ9bzMbSZTb8jEn0V2eK1LBqjuMqSnD65xEUackX5MPtDnE2R
	cXcZD8eWk0t6UqEy5wSfd1asx44Gscc/eoy/Y10yKx0Oe1ROgs96DuIqjzQBMR5i9yZocScPcg5UJ
	DAiNmF1EQEGZYzgA2s0MntIMNQGoZzQHYX5WsVCK09oPw8GLP2PuP5/wkwSy3YFHp1Xdak4eLU9zU
	LRnGa1/9OP1MOrshtfhXc/OY30jdReqsz0JomDCbay4sUTusSzSUDe6HvY9BR1LE3eZm0MFAAswfB
	5tl2f696aFP35gWFLY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7DB-0003rr-MY; Fri, 07 Jun 2019 05:14:45 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7D7-0003pQ-Ry
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 05:14:43 +0000
Received: by mail-yw1-xc44.google.com with SMTP id v188so235354ywb.13
 for <linux-riscv@lists.infradead.org>; Thu, 06 Jun 2019 22:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=3Xju7gDMx5B9qHaj8jfngLaT2SOH6/zYkG9Df0Mcl7k=;
 b=KzOVJS3w8Hhs9rF7BQM3HuP+5QYVcJa+tptO+Mfetj+yo79LIL0EQ53UDXHCQucfMN
 nqrC7YbiJhTy5A+Nwa2PZNbCScrF7D3p8s5szl104PIvwELvD1BLO46dJtbtBji0lurn
 tytv/uYYJD02f22byeiCCB4SQAJAAgBtuQO+HZXNKhhXGz6mcwRDHDXtnPiUG+wCG4WU
 +I7blFPOzKut/E6lYvlURG+pRA4TRjnpTOc5ICrN9w4H9vtbb+eD1mYdOE/SPuu+Zf2m
 K+Gse+UhmqBfr2SL4aaFYV/xMatUnwv/fmaA9/ygeDWezbLXafyOnxnyuJFV2+64wjVn
 hY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=3Xju7gDMx5B9qHaj8jfngLaT2SOH6/zYkG9Df0Mcl7k=;
 b=siMsdQfkP5GapnwJR9cuRhrSQGVVbdbWXv2TnITsRX/LhBPznEYmcdjp4lPkAg6/IG
 jVv88DVfIqyu59eDNO1UDja4HWlXfGnkM3YUigXi+Ny5LpXc1+R0FbjFFyw2pikkZgMY
 Wa56cDE+OyXxkKFZ+qrzKBISn4a8dX34vtQBh8xxKRlYH0JP793FpCX8ajOQBKxYo1OT
 WDxxssnPcwbByKD8OqqtHP3B7p1U4vqdJQMi/rm8yux44rhcneqg7OvlhaGNiAEm6iA7
 0EDCdnA8o+h2hWo+Q8MYpEiUIzUIXnL3Geb/ii3Rarj+tpiFj8lqoESnA1kSoUQwSFG9
 7Dnw==
X-Gm-Message-State: APjAAAV4E7h69QjW6Mh5+IEkdMIfoxOZ7W7sq1eyZVk0cb1JGORBs+Rg
 gaNnUsH25iEdoQ79E5+IV/VkF/XgWmQ=
X-Google-Smtp-Source: APXvYqymtR0IKUoS+1Xfs5Lrap+5HcqM6C2mqqK5beiLYtakPNM8vO4d1FONXXn79jn905ffOBLsfA==
X-Received: by 2002:a81:15d4:: with SMTP id 203mr24760997ywv.133.1559884480901; 
 Thu, 06 Jun 2019 22:14:40 -0700 (PDT)
Received: from localhost ([14.141.105.52])
 by smtp.gmail.com with ESMTPSA id i1sm287854ywa.19.2019.06.06.22.14.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:14:40 -0700 (PDT)
Date: Thu, 6 Jun 2019 22:14:36 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Loys Ollivier <lollivier@baylibre.com>
Subject: Re: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
In-Reply-To: <86y32hh16j.fsf@baylibre.com>
Message-ID: <alpine.DEB.2.21.9999.1906062213590.28147@viisi.sifive.com>
References: <86y32hh16j.fsf@baylibre.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_221441_908110_7C797DB8 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [14.141.105.52 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019, Loys Ollivier wrote:

> On Sun 02 Jun 2019 at 01:04, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> 
> > Add support for building flattened DT files from DT source files under
> > arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
> > architectures.  Start our board support by adding initial support for
> > the SiFive FU540 SoC and the first development board that uses it, the
> > SiFive HiFive Unleashed A00.
> >
> > This third version of the patch set adds I2C data for the chip,
> > incorporates all remaining changes that riscv-pk was making
> > automatically, and addresses a comment from Rob Herring
> > <robh@kernel.org>.
> >
> > Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
> > BBL and open-source FSBL, with modifications to pass in the DTB
> > file generated by these patches.
> >
> > This patch series can be found, along with the PRCI patch set
> > and the DT macro prerequisite patch, at:
> >
> > https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1
> 
> Tested patch 1, 4 and 5 using FSBL + OpenSBI + U-Boot on HiFive Unleashed.
> Tested-by: Loys Ollivier <lollivier@baylibre.com>

Thanks very much for your testing!


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
