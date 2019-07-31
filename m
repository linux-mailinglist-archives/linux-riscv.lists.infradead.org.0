Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CAC7CC68
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 21:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0Nwe2En1hxoRRNXeLBt/keJoVygcnhXd1YmECilxpc=; b=HTtrKqN6nSnLmw
	K5LfgqciZjOlaEtRiG1BIYnB5Or4pfYVktzX3C1zsOrUgakPrLqQ8NUbGgmZftrvRPrqQ6QTsIz/R
	sbOIEsW8Yp5Qc7sF4qXroQmQp38iUNyxy1FrKH9dUZp6LkqjRcQ1jcWGrcqHGOr40GY5qZ2rssegM
	pL9Kr81FtTNqZoaDbvSrhQQIzqY43kXA/PhAAlWTm3f78pFyedrw+TjuHrfbwJiL5NzenLPDUUoQi
	ZQ+k5twdYIqcdiZG5r8xcOBIeH1f6cd4wCwR0PzLNj+zeakDYU3hcPd0uNKb1OvnZiod2sCsKm2iB
	ECVmaKQiXbSbV9agBp/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hstrr-0006DN-3w; Wed, 31 Jul 2019 19:02:31 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hstrn-0006CV-PZ
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 19:02:28 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id C6A6D7DA;
 Wed, 31 Jul 2019 19:02:25 +0000 (UTC)
Date: Wed, 31 Jul 2019 13:02:24 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH] docs: riscv: convert boot-image-header.txt to ReST
Message-ID: <20190731130224.1ebc92fa@lwn.net>
In-Reply-To: <1eaeb3fbb74de55af0b3f6d93ab40776dcbbb5c8.1564174903.git.mchehab+samsung@kernel.org>
References: <57eaa99a-d644-7b79-7177-a45d3ef1e71a@wdc.com>
 <1eaeb3fbb74de55af0b3f6d93ab40776dcbbb5c8.1564174903.git.mchehab+samsung@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_120227_834760_FC1A6387 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@infradead.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019 18:01:55 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> Convert this small file to ReST format by:
>    - Using a proper markup for the document title;
>    - marking a code block as such;
>    - use tags for Author and date;
>    - use tables for bit map fields.
> 
> While here, fix a broken reference for a document with is
> planned but is not here yet.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Applied, thanks.

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
