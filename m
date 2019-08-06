Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C347182986
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 04:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpwOHfFOJj7oSkx3x+QEJuIJjwINvxwjR3XTXBlbMB0=; b=Kd0RpPbM+d7AVm
	kScEPbQ2FEa3dX5lf/jGbGqFhvX2tVIVKfmO9bjKabVR2ZuOpUzz+bLS10wZi14O+FbvI88LfL2IV
	8einI3llsBaronwoact4OZWr4Up1dxqV+fjeJVfJfvJrT0OiLkQBSPWtutB5TqVQgKGAzENoxlw9A
	wgcQ14BnS8e2+yw9pGw8xcH6ZcD6OW328+vM7PCzQDW+SnfYl6UrLjprMBaKQFmeAd9b/KTROrXjT
	XMiFo3ID9/9SQQ4Qb8vnowi9PdbtNjtChNdNamxAa81OR4wixQie/Vw4YiCzsg2NNUka8f8kRORSB
	Ewmi0QnJb0NB/wPooCuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huoyy-0003rh-3j; Tue, 06 Aug 2019 02:13:48 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huoyu-0003rO-Pq
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 02:13:46 +0000
Received: by mail-oi1-x235.google.com with SMTP id m202so64302402oig.6
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 19:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=0L1OsFt/bTxPpmqdtnfzGpQhzeMM7dylBv6OFWv8uAQ=;
 b=XXIEoqKjBGFjbVP2zWoWI0l2zvbflxthnIIo6petvwqPuECYHrA6qAYge+XICXTROb
 UiZRdX6KjO07TXwRnHlKccxwSlYoaPKGOsTByEN7YXks1j/xs7391yB3oR3Uas5xTRWx
 KYK/EV4iu7/eqDHEUB3BRMRlVQwiczq/Yk8yTqLI4087ig+x1PIcnp51gVwgVt8NY3fh
 IY1OSb9hnAipuAKQYxXUFbt0elWjuxHxm+v0e/zjnlkbjDAm2d4xFmQvGEWHVREK1uZ2
 N7jGxIdx2Aqv9pi/WTSJ3Gk+/zQWc9N/1F0UsvcvRlmlbIEKbBSmJiDIBUwHBMSPk9Yq
 IwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=0L1OsFt/bTxPpmqdtnfzGpQhzeMM7dylBv6OFWv8uAQ=;
 b=muNHzrJBW3VdzcpTwMOEJK17QYPwl5pyHeptdeiU0sqrPc5Is8FGI8KLiXHoBhzMfb
 /B65iKgZRzB8MxpogIc4CtdAFeA9rITTDOrLhsqsi5E93U86dcXsLY1XTBoKHWzDEldT
 b+ZNkAReou3xSRY7F55UzOEToolo+xpueFWmHkF8hyRfyUOB9y2H2qA7WLUs4Hffp8T4
 a3/ftHWPIEjZnFeaaubGUNRhRzBFsWoVT/XdCSBw/YMckNOUB6oYVfowfh/g8EN5OrD2
 uoPkOQ3oT6GdLPbdt3j0x9OIlQTsD1ST1iDo6uP7kEv/KkJRP2gtYXBbp9QTWoT5EKX6
 495g==
X-Gm-Message-State: APjAAAX+QK2mIgwoSOPUPpYYsvIvCHwVBQGFDblGGTy+9+P0wjHOEt4/
 wLKl4jnlbW9tRYQcppubBdaFGg==
X-Google-Smtp-Source: APXvYqxGX5XcqluoO4AK91m5c9/qwNEt/+wYqGhOXT8ztYfpqjkOeJKDNWsP0h57l/wjwSIcr2iL0A==
X-Received: by 2002:a02:5ec3:: with SMTP id h186mr1600491jab.110.1565057621284; 
 Mon, 05 Aug 2019 19:13:41 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p3sm74693436iog.70.2019.08.05.19.13.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 19:13:40 -0700 (PDT)
Date: Mon, 5 Aug 2019 19:13:40 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Eric Lin <tesheng@andestech.com>
Subject: Re: About __udivdi3
In-Reply-To: <20190806013723.GA5417@andestech.com>
Message-ID: <alpine.DEB.2.21.9999.1908051911290.13971@viisi.sifive.com>
References: <20190805055844.GE4292@andestech.com>
 <20190806013723.GA5417@andestech.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_191344_909725_9FC0E63C 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dslin1010@gmail.com, alankao@andestech.com, palmer@sifive.com,
 rick@andestech.com, kclin@andestech.com, linux-riscv@lists.infradead.org,
 jimw@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019, Eric Lin wrote:

> Cc: mailing list
> On Mon, Aug 05, 2019 at 01:58:56PM +0800, Eric Lin wrote:
> > Hi Palmer/Paul, 
> > 
> > Recently I encounter a problem that the output from __udivdi3 is wrong.
> > The compiler will generate __udivdi3 library call when doing 64-bit
> > over 64-bit division on 32-bit platform.
> > 
> > It seems __udivdi3 only supports 64-bit platform.
> > Do you have any comments? Thanks.

It sounds like you're describing a potential issue with gcc, rather than 
the kernel.  If that's so, then the gcc mailing list(s) would be a better 
place to discuss this:  https://gcc.gnu.org/lists.html
 

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
