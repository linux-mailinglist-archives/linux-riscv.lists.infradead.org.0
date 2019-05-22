Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5871B270F1
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 22:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWcgJPzM7o3EB+rdV135k1+VkGuhyi2eGsiPlLRG9sw=; b=KXuFnxUojqfBPK
	+9WutqY5zXlA+bUTJkd91z8zB41ojPaKLcYHOKjp8GWWUMFE/jzKr2KhrXNloc9sKB8tghcUn5RCD
	Jegs1Q5OZ3HUl6VGXUbXvLuFtm2qF2F8JzObGD9pby05qWcJuUsLhQFcfON8gEB+vig6TV8JSOob0
	mxCzkxaYLUa5ihVSm3ct3pqfWLaSJueXemCbUSwbUJL15a2hUIez3PM+qhT4Tt2lT5b9HTCcUXGRc
	Tu84SPPwW1TB0JSSIh29m2SThjMNIaCxUpEHj+9L6gmC3P12tuXsGBam3kDxZGuPpcXvePUDuBkog
	nar1CzYBUh2t1ELeEQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTY4v-0000n2-Fk; Wed, 22 May 2019 20:43:13 +0000
Received: from mail-it1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTY4s-0000mk-8V
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 20:43:11 +0000
Received: by mail-it1-x130.google.com with SMTP id e184so5218806ite.1
 for <linux-riscv@lists.infradead.org>; Wed, 22 May 2019 13:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=ZC40UXGuqvgmXeeyBQEDQH2D4ABsnJymg/e3/iFi8EM=;
 b=ClatEgym5GG/sFpHiXlz3JhDn0SXWRUXIijm88wuGN1OkTG6g9LPDPp1Z7g896BRDA
 GbaRtStlsx/ANnCpVWNloi2thsT/oxNg03OB0noDw/bpVtP58Kvbhyz3WXX87WieUuGP
 GtZxflPOyeElnQvOSS2FKh5NRTx0jQwz40VtfmlWaowXhLbIgxN2bDwyWv+pgOaijht7
 klT9bNnzDitSJIOMhHenaEQuBXMJJbPLxH8IVwSlAvL8XYxFMzvps6gMcmTsS4ZjDj0P
 fE9buI3vdhr4ig1NGyVp4WZ2nEHbZ/5fIuSa3YEn1nFMyBQcOySoZex8qGdrh14llliZ
 NKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=ZC40UXGuqvgmXeeyBQEDQH2D4ABsnJymg/e3/iFi8EM=;
 b=qAHn0im+Bee6E5L4oB4E54GzMSypeKR+H4pMbwnIpz8f9iHdLZ+fEACz2HEvUBhaxt
 /N74qkLGxwozNqngrTTmrBG348k4J73govu1+3ng9YUknqLE1vLSXhnqequy8nZtspah
 lcTELe/Wm4qwmAubm94VNKXm3feh1EfCr4p/Nh7BJ37k+uyGrETHgnuO4R1D+vjlbQ/8
 bseQ8XGOq6Vy88wxSpOTYTfu0W8l4Q/z4NpQQPzAdXTXBwbfgtCYhxOeeA7pcCNM47Q5
 S96ecAqqsjlnWQLRQd4FsEQNPniEIsJGxlUKjwsLfGBcHy7niOtoDSbY5GXsWkw3X2Te
 SMMg==
X-Gm-Message-State: APjAAAUgPgONpkklb8ElzH6my2C/IyNQSSIUjRzjh6S5pV4AhdFxjGF5
 ggYIB9t2+7fnoc46y4GMpGOHwg==
X-Google-Smtp-Source: APXvYqypjwq2yWMo9ugSp4JF85bwtALETQcMjRETHXjxKprGR67hhRLTy9503U8TN49kD7Ml1M+CqQ==
X-Received: by 2002:a02:1384:: with SMTP id 126mr54618244jaz.72.1558557786528; 
 Wed, 22 May 2019 13:43:06 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 q79sm3852674itb.15.2019.05.22.13.43.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 13:43:06 -0700 (PDT)
Date: Wed, 22 May 2019 13:43:05 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: 5.2-rc1 boot on Unleashed
In-Reply-To: <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_134310_541453_21221DC5 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: troy.benjegerdes@sifive.com,
 =?ISO-8859-15?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>, anup.patel@wdc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+ Anup, Troy

On Wed, 22 May 2019, Atish Patra wrote:

> On 5/22/19 9:42 AM, Paul Walmsley wrote:
> > Am checking on this now and hope to have some conclusion on it this week.
> 
> Thanks. Any chance you can take a look at the U-Boot clock driver to patch it
> as per the DT changes ?

I probably won't have the chance to get to it for a while.  Looks like 
Anup was the one who posted the clock driver to U-Boot - can he take a 
look at it?

We've also asked Troy to look at upstream U-boot related issues, but 
I'm unsure when patches will start flowing upstream.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
