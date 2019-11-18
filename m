Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA901002F1
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 11:51:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40cWEjjYPC0eda+LCCAuG4FHfsszj9nZrm/qhfA2NH8=; b=jYXEbABI5CCXX8
	I87XI+uFLBapjC4824bqYDdfC9qLaD2uwlKhhf5XL7Fql1zvTRNUMSXkCLmiig/HXmLV18xj0I8Cz
	Ntd5Uol46qiox1ltqHIFVccGmYXeXnq7PnargyTeNrn2S3bljfyQ7h5F6aKLodsfZkcQbAu3h1/08
	8z9Wa77UaL4SKoHzgbWpxDHC+kGCqPt47wKEhbcANeIFbmxHc7HLN51ydy28/wNX+y3dQD0Ht+MEO
	JW/6fqaWu7mgnxpML62Z4ge/rWRpfIPCSNq7I9OELyYB9SgysTY/U1qFoD9rJSP3tb6FCseGk6CEZ
	jUvlwu83xCajaNfu+pcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWecY-0002A3-Aa; Mon, 18 Nov 2019 10:51:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWecV-00029V-3Y
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 10:51:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 95891AE3F;
 Mon, 18 Nov 2019 10:50:55 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: Experimental branch
References: <alpine.DEB.2.21.9999.1910311101480.23683@viisi.sifive.com>
X-Yow: I LIKE Aisle 7a.
Date: Mon, 18 Nov 2019 11:50:55 +0100
In-Reply-To: <alpine.DEB.2.21.9999.1910311101480.23683@viisi.sifive.com> (Paul
 Walmsley's message of "Thu, 31 Oct 2019 11:11:45 -0700 (PDT)")
Message-ID: <mvmmuctpieo.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_025059_293465_492D40A5 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Okt 31 2019, Paul Walmsley wrote:

> - Anup Patel's KVM patches (waiting for the hypervisor specification to 
>   exit draft status, and for reviews and testing)

Note that the KVM series depens on the SBI v0.2 series, but the latter
is missing from the branch.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
