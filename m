Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD102DC9F6
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 17:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKnPFlKV9ni1gXrqbIys/Lwum8qfOVQrgXNQOBioFHc=; b=cqMwim4nk+XdKy
	YjNc77NHQShQijWzYgM8S54g6rpGAlztQYRtr6u/aE4lzyNORq/sQC+7N9dAwF43Akl5ZQglgAQjp
	YGyZrdMhdvzE2rxmGRvfH03P+oKPbWd0mdR4D50zK3e3b7GX5c5k+5pqeaLXQidZscT2cQGfd3oE/
	Cg7DkceS8R/dXLv+vkdzf0IIiYOiLf98B7C8/rG7PYuF+5X2Wg+W6adBH0N5vcx0wp3U+LrzpaWyc
	F3M0I+tmact5qoCURJSllTvRAVgZZUh0sESwrP5Stz8RL3jprDz6R7aShqi8wSfXEy7tu5mKICbnK
	ra6gHPpwGH+E6/Z4oXug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUbu-0006hq-S8; Fri, 18 Oct 2019 15:56:14 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iLUW3-0007N7-Hc; Fri, 18 Oct 2019 15:50:11 +0000
Date: Fri, 18 Oct 2019 08:50:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 3/8] riscv: init: merge split string literals in
 preprocessor directive
Message-ID: <20191018155011.GA25386@infradead.org>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
 <20191018080841.26712-4-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018080841.26712-4-paul.walmsley@sifive.com>
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
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
