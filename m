Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6CCDCA19
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 18:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKnPFlKV9ni1gXrqbIys/Lwum8qfOVQrgXNQOBioFHc=; b=XWYbhtdAlViOVB
	eHV6wAMtZbxiMYfpysfUHhcWbkxiENu5Kn2TyYdRJYWAAsvPupng9BIwGWG3rnikzZ2fvrEufB9HE
	mADq02lDnfi0wrne7E+YpJE8cQyow7/5WGi0JgsDh6Z6GMuIiQDdra91Pnu+VhS1yPF0hTjNvb53I
	Be0j9vorpm5JjB2NQ/foJPWzxPI9sP3KkmMLE9pi4aPx+FOqsfOvU8pMEiJesSEKspIH2K1bRq1mF
	tpFHOXEKT0j6xr0i4iuDMhinX6TWa46djGKIXqmipAxOAPxlUknN7wXcEr/vSsd5cru5mwjWZQwkp
	23j30nxSlA2NDQeTZgNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUfR-0001US-8J; Fri, 18 Oct 2019 15:59:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iLUb5-00064Z-7B; Fri, 18 Oct 2019 15:55:23 +0000
Date: Fri, 18 Oct 2019 08:55:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 5/8] riscv: mark some code and data as file-static
Message-ID: <20191018155523.GC25386@infradead.org>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
 <20191018080841.26712-6-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018080841.26712-6-paul.walmsley@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
