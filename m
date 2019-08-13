Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B48BEFC
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 18:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vb+QbBGMwVrLzRltm+P0i0bqV0klVB0lujhhNr9+DdI=; b=m+m/sdet4dJ+y1
	tJOOquWHf7tvZkKIqDhVIxhkuxw2iNZlX3jRv7YxLSyj6pSpA4Wsn5KLCZbify9SH8EYPUczaHyPN
	DK2vLUc9SYNJahSknjILJYEUybQISlaE5ahKyXNS4i3lvJ+k/RjmKCW3rpFS2yRBkvM47DJG3+EUT
	yplvxBXmzcslScfe8JEnF6+d3NpfeZKtd3+pFPpNsDAC1E1+1cQMe1T6uNBUBwhMSrR4PQQi6AqX2
	/E0PEQfAFwObNnbF/suxeZyA/dQscBzDaS3aLWXEoXFPfRgoJWcAsl/arJuaN2ECIzJdHmuBJzRre
	lxzknVYh9iK0sa2FnlFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxa1j-0004lA-Sw; Tue, 13 Aug 2019 16:52:03 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxa1f-0004kS-P1
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 16:52:01 +0000
Received: by mail-ot1-x342.google.com with SMTP id b1so6975557otp.6
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 09:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=uC6dDZKAip16b+mn3qV8AFtyarHS2Wtjrk4sIs9wXF4=;
 b=XgpQDDJMv+/ruzPLaeBUwtQGSgQA4L3nxrBQ917gPpnuR6cUFXgim3kBcEa/w5jutY
 1I9/+H2KPKPtxKPxy/8FlBxrLF+MmPmdZbuhYc8EDkrwdyqA6hVQoM95f8HcbpUpb1Qx
 hZTvovsZfKBhDBxViQTvA8wfBcIFktwAJqiyuK92QW91ND+gAjrkFS95swU6Mb77+JJT
 dWsfs+8qZJV00w+zYAJRBgLNShd42ftbjk5b5cCzZ2Wio/qFC7MchhHVkiLc0/4EM54U
 4yszi7PJ41btEdlzVWQp+FYSYj7QgFW35VAqKh4gbuBkIL4TFcY3xDlkKtl0imc5VzCp
 WJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=uC6dDZKAip16b+mn3qV8AFtyarHS2Wtjrk4sIs9wXF4=;
 b=jPutUTEM+sxgiyAHmLjvPq4JBV3jFgzyM7GIPjPLPaiPKQVqegqlvx9LSILURpHFJt
 CD3I9oWLDV50MPVrCEiHBIe2jhJQBXaHodkRaJGgZL28gXzoNoUdu/ANoyZ3IRn/OYCK
 243GlXRf/kkY+QpvqSOgCg5gzm1UvBYp+j0IJotPB3MMPMS0mek3cZ/caY7VcC0S4mA3
 VRmswrGY+VSAWtWozr+po9vIhIHfb0YqYvFlLUW4pV1hv9a2oX/MGZHOiCCDounZlFB1
 0jZmZQ3cF+f323zn/CyeT0uspBMqKbrZi1M3wTY4PBxAasFo1sYIPYLHFVosC8lsEAvc
 9uxw==
X-Gm-Message-State: APjAAAXAwJ5gkMK3DcWSVd+3vjnusUHzvHO2Z0pod2OQLDH6LggbchaK
 l/cHkvMnV03ThGjk6rCUR/J59A==
X-Google-Smtp-Source: APXvYqwPHBJM6jvKxBo1VW6csfTWhlFi+l+kj3B6joswy7ZnX59kuzbPWX+o7X/YHb6OhVNwnoh/Yw==
X-Received: by 2002:a5d:9747:: with SMTP id c7mr8146194ioo.244.1565715118854; 
 Tue, 13 Aug 2019 09:51:58 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 e26sm85862802iod.10.2019.08.13.09.51.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 09:51:58 -0700 (PDT)
Date: Tue, 13 Aug 2019 09:51:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 02/15] riscv: use CSR_SATP instead of the legacy sptbr
 name in switch_mm
In-Reply-To: <20190813164257.GA10019@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908130951250.30024@viisi.sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-3-hch@lst.de>
 <alpine.DEB.2.21.9999.1908130935310.30024@viisi.sifive.com>
 <20190813164257.GA10019@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_095159_816867_516F540C 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Christoph Hellwig wrote:

> On Tue, Aug 13, 2019 at 09:36:23AM -0700, Paul Walmsley wrote:
> > On Tue, 13 Aug 2019, Christoph Hellwig wrote:
> > 
> > > Switch to our own constant for the satp register instead of using
> > > the old name from a legacy version of the privileged spec.
> > > 
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > Reviewed-by: Atish Patra <atish.patra@wdc.com>
> > 
> > Didn't you want us to replace this with Bin Meng's patch?
> > 
> > https://lore.kernel.org/linux-riscv/20190807151316.GB16432@infradead.org/
> > 
> > If so, probably best just to drop this one and state a dependency.
> 
> Either way is fine with me.  But until you have a branch with
> either one applied I'm going to keep resending my patch, as random
> dependencies on uncommitted patches don't work.

If you're going to resend a patch, it's better to resend the other one 
that you've explicitly endorsed in favor of your own.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
