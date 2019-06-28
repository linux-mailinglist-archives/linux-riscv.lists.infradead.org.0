Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE8558EFF
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 02:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=Xa9Xkq/6nXglVxma5UoIEeZx72ex6GEbRai5UpXiZYE=; b=ctQ2LBt5COTlv7cOjPV70bZln
	X6nzXLXiMw/Jn/DS2xhDVpi3wK9moshQY/6GjW8BDpYfsU3CV4AlVpbF4J3AYp+/nwf8414Vacpx5
	+t+fW5Weg2fE/k0U3F1RuL+fbpgJJiksIE+dvK3YZmWTJ2OPC7alFu7pswVDfEJJP3kW3RyTlJaGC
	K836wnJDq3xouC9F9WjdEXmqwzhkEhj/xg2Tqw29gXG92dbtYc/oi/uFYUKwUxKjOAP9MnHC+3E7X
	zX5/wnB4FCs2p3302CVfvyhfV63Goa8kTmbLB4KobEwk2AWcb+CrUJCsvT9GOFs5FFg0Gqhi2GqDH
	XLf0nLw1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgemm-0002LS-F8; Fri, 28 Jun 2019 00:30:40 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgemj-0002GG-4C
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 00:30:38 +0000
Received: by mail-pl1-f194.google.com with SMTP id i2so2191162plt.1
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 17:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=BWNCp5oDedqi8XCpspBk7yeVq6vT3KAfD7C5KenC1qs=;
 b=dbWtX709yePsTNPj31dPNIRVrv/fjLEi5qr1Wt3Czl9BQbYhPbcK3oyV91oIK+ZmDB
 GXmZfMngyNp+FEcoYUgJ5+GqRKeoHLjE+xOu1i9wjqN7cyVDrFPPC5G94UNzzUIQSI4O
 fbjyaCw4TWzRmPEk5kusP8jD0HG264P7KEMI8ef0nAK2uYiDt2sC3Al/igcHF+rwCybw
 oyPxf6AlLnMne32lBNhBTUK3QLljBKMFpKnmoLa/u8ph+Gu6AuAgv3xbgM7c37CHqNnV
 U4sqAk4g2yxVfQdSN5v7ipqHOti15Q1L0F2m256CG74lG/q3HprH4+Y5JaucVrDzNF6R
 KFjQ==
X-Gm-Message-State: APjAAAVbdnYRlrRm1qES8NQ/77lStntUVr2hOTt1qvsGI1KxjmACnStX
 f5G773rsbrouqmV6ASYRwdDMKg==
X-Google-Smtp-Source: APXvYqwSsoGpP6vuymQafT37ejUikDhjErlrchUK2E+9rL7N1nLO439uXvDYCVQ6Kz0TGkJekr5sCA==
X-Received: by 2002:a17:902:7448:: with SMTP id
 e8mr3430303plt.222.1561681836058; 
 Thu, 27 Jun 2019 17:30:36 -0700 (PDT)
Received: from localhost (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id u16sm350793pjb.2.2019.06.27.17.30.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 17:30:35 -0700 (PDT)
Date: Thu, 27 Jun 2019 17:30:35 -0700 (PDT)
X-Google-Original-Date: Thu, 27 Jun 2019 17:30:19 PDT (-0700)
Subject: Re: [PATCH] MAINTAINERS: change the arch/riscv git tree to the new
 shared tree
In-Reply-To: <20190627090116.GB23838@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-45bbc7fa-7b3e-4893-8a09-5e7449673254@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_173037_170472_C025D94B 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 27 Jun 2019 02:01:16 PDT (-0700), Christoph Hellwig wrote:
> On Thu, Jun 13, 2019 at 12:25:18AM -0700, Christoph Hellwig wrote:
>> On Thu, Jun 13, 2019 at 12:07:21AM -0700, Paul Walmsley wrote:
>> > Palmer, with Konstantin's gracious help, set up a shared kernel.org
>> > git tree for arch/riscv patches going forward.  Change the MAINTAINERS
>> > file accordingly.
>> >
>> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
>> > Cc: Palmer Dabbelt <palmer@sifive.com>
>>
>> Should you be added to the maintainers?  Is Albert still around, as
>> I see a lot of people Ccing him, but never getting an answer?
>
> ping?

Odd.  I significantly remember saying "let me just finish writing this patch
before we have lunch" at the last day of the workshop, but it looks like I
never sent it out and can't find the actual patch.  I'm blaming this new
laptop, which is constantly blowing up on me :)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
