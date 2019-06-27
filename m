Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ED557ED0
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 11:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jmTLt7GnzzqHIkjDjNCpbzjpWrzNGAyzxuZzDd33Kg=; b=WVm7ez7Rh5s0v3
	roLOTmF5KBRGZ4QsPvQk9dN5yIgGSuThtsF4mTm9M5QBqfCmzSFvA1/LHizWvQUgTjySNzZ7I5bAr
	7V7GY37cFi3cx4946SlNKvcOI1VH5XYFxlLhXO72EnZYg2/uDBBVJBltD+RoqhU/pZJK2bn0l2Iwb
	0xVHf9pE+JiHimhelA6tler8A/cpq8lYZy6r8ONbrB2mXskL5eKFHp4NmI/IVMnWPdyVoR/8qtBla
	VYt8VcQwyKV4vZmvAIqwaCOYD5MihY29XrDj8fhDwM0r5ELR6J3BIAdoWQpanCT3s1tzXSZ+Ep4oM
	1IIuDwTff4Dws4pCj7KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQH4-0007Yk-Gx; Thu, 27 Jun 2019 09:00:58 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgQH1-0007YL-OM; Thu, 27 Jun 2019 09:00:55 +0000
Date: Thu, 27 Jun 2019 02:00:55 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH] riscv: Remove gate area stubs
Message-ID: <20190627090055.GA23838@infradead.org>
References: <d7f5a3b26eb4f7a41a24baf89ad70b3f37894a6e.1561610736.git.luto@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7f5a3b26eb4f7a41a24baf89ad70b3f37894a6e.1561610736.git.luto@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Florian Weimer <fweimer@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 x86@kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 09:46:18PM -0700, Andy Lutomirski wrote:
> Since commit a6c19dfe3994 ("arm64,ia64,ppc,s390,sh,tile,um,x86,mm:
> remove default gate area"), which predates riscv's inclusion in
> Linux by almost three years, the default behavior wrt the gate area
> is sane.  Remove riscv's gate area stubs.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
