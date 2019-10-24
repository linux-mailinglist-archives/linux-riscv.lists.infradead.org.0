Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414E9E4076
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 01:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6yFoPHtIDq5RHvEvW7IsNC/cTT8PQlKVapAIwX6s7s=; b=UUO9aU5Y3x4G3F
	KxEHSmO5ApOvPvx2EIeWLQlK3GOwGGdIj+c187an33Wyb3Fj9tKrc+WebcOyj4XLyGGQVnCaZW1kh
	nX+5YX9csGZuFH/iSkNhlu+i3jJIuAHwI21HHIv6ROl7ty1FZHdq2UPW3NJSB7Z98Mjzfj2D398wk
	QE2WabCr4mvxoNKvesQo9944P90EDKUd+7gWRUM6xd7FJPzSQd8Yzg1iiIAZLkdkCb5wp7jAu79/X
	NEKZsP4OFHoTTOCAQdLA2jJgdWDoCObZ2cdOMSXDFkmKljV0LY2ZqO0eafD2uRmNWp6CDfKYw2yhw
	JVlp5JXqPy0lZCYmPPzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNn0a-00083j-4y; Thu, 24 Oct 2019 23:59:12 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNn0W-000839-Tz
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 23:59:10 +0000
Received: by mail-il1-x141.google.com with SMTP id z10so242064ilo.8
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 16:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=nrYq+Fut0kmQhvcRn7pxSXUfim+ixb8xYZ7zEoN8gXo=;
 b=BsAUU74uS8B0k+6fZmvognM6tez13o3m6eEh19qshytOcDMGPC6/x5LGe/utbx+1Nm
 Gl1SGTWaU8I6VXpWeZ96RVdo7Frjt9AcOHaxwXXe7MH3vVU1iFa/l7vyawBgOEZVPXxt
 CueHWNYxJECkUK4BvK6ePH4zszEQ5pLR2MCh5x2zHXdWwdLD+6LxuAyu4qVRPSLopghr
 DyOME0SHIzrw5NVMiUWTiCA+Jlc0cRHJ2Ssf5JeQcGMjRTX2DBunouQ9WY5kRqmbAu+2
 ieryA2hktUS1oEOY23HDFq8SVOrlikVEKeY6qw/rRZ/K/x1KjS8crEvmviI3tXGCwjs+
 YXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=nrYq+Fut0kmQhvcRn7pxSXUfim+ixb8xYZ7zEoN8gXo=;
 b=kaM82xEXa0wZiH6KBaur1N4tPQRBpkVxqs/u9XPLRNqt4kyJPoKcRS6GNe8ZYoQvjU
 BrNdRZn2n0BdU3UerRFO5PIKqghMybdp2ghGlrMuhKbB07bLjQSSNko/kb0601T6o2uG
 gLXgW1P6fE7DwsqLa/AWpcVmuRcxPOtGA4W4RJXpmMXKMIj3y4KhECIIpDVW7YGvbRnW
 +wbuy/noRd/ZOjSpbdjgjZk/WhtEF+kvuY1ZUt+YW96iS6ucpE0Nsexg9+UAHPOmyREL
 h9m9756jVKw73P39Xf0wbwsvBlXDJbB2E+QmyA2DdlJaEYtB0hLSTDDgjeuBMoAUUecj
 sMUw==
X-Gm-Message-State: APjAAAW5xpkTJY1MM5cm/iEyna7WdbdSRSRp/Ej8+DWl+Qe/CwJjZySM
 /I4icT7FlwdTC1/RmuQnzkJdyf6B6oQ=
X-Google-Smtp-Source: APXvYqxSqNsy/Qwmu3LlHURutjKdJmHQxsFx2ie7La+PrF/qzATogjgyh4MjolOQL4abtFIhbi4ZfQ==
X-Received: by 2002:a92:ce83:: with SMTP id r3mr959589ilo.176.1571961543943;
 Thu, 24 Oct 2019 16:59:03 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t68sm88604ilb.66.2019.10.24.16.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 16:59:03 -0700 (PDT)
Date: Thu, 24 Oct 2019 16:59:01 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v3 1/8] riscv: add prototypes for assembly language
 functions from entry.S
In-Reply-To: <20191018154923.GA23279@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1910231812080.6074@viisi.sifive.com>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
 <20191018080841.26712-2-paul.walmsley@sifive.com>
 <20191018154923.GA23279@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_165909_029288_0F1F2D10 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, 18 Oct 2019, Christoph Hellwig wrote:

> On Fri, Oct 18, 2019 at 01:08:34AM -0700, Paul Walmsley wrote:
> > Add prototypes for assembly language functions defined in entry.S,
> > and include these prototypes into C source files that call those
> > functions.
> > 
> > This patch resolves the following warnings from sparse:
> > 
> > arch/riscv/kernel/signal.c:32:53: warning: incorrect type in initializer (different address spaces)
> 
> I don't see how adding prototypes will fix an address space warning.

You're right - that was a cut-and-paste error on my part.

[ ... ]
> All these are not defined in entry.S, but called from entry.S.

Indeed.  After reviewing this patch closely, I've just dropped it, and 
used __visible for just about everything.  All that is reflected in the v4 
series.

Thanks for the review.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
