Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1464C5939F
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 07:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skN4fyr5auw5ilidfg6nVW6magqEug3TtRSdaGF0mPE=; b=mUkonh69v3gzQ6
	nK/z/7u34aXeRw1fqrp1kzPCLeL5YPwx+d6KN5sy6kfoYUUGnU4Mb3PNjzjHx/SLD8RsNSMMGkUFn
	HJXJniulF7P3T8MtMfXmp89GGxGMtAUVdy04AW3xB+ndpsM548nfmqU/OfuQY9rlik4SgKvKnmAo/
	7KkxGDOb9RPok7bQCAyoARBuxMgL5wylxfIoJpqe6Z9k/lCDQIOE9bzqVFgA+iseGxiZchpIsU0W+
	fnFzRAWCQXd806inDnowRgMllW21/R5/kY7W2iECrPckKfSgKwvc1IC9K5x/km8jUcOK5iwP7rvuf
	6LcG3NTPkB84oHszOSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjj6-0003DO-Ow; Fri, 28 Jun 2019 05:47:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjj3-0003D5-Ca
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 05:47:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so10072271ioo.2
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 22:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=fvuYML5uzQgIUwNz7fCS/6vO91+ePnv6G7iaXOVewbE=;
 b=Lh/PXUfNzB9+Yc3PqmnULJsPt2VQgNpCN5/zylaX+Hmw9OmqW6glMZiI3omQZX96Fc
 nCBpzg8MUVLXTC+3j7tC4tgeXYCZRZWJE/eUPLQwk46X7HbLafSb3pVCBoJyA/mSANfq
 /tb0Vv6rv6sERdmMPDB8fMeo7dUe+noq9BDGDjJfW4BEHMIy+d8lgrO7SgWFQUPtARLC
 Z+GWSFmkad/CsxXWM1JNvClu1KF/qEUBefedqYubAQ9icruKIkzRehlNlZNMbX5Njaif
 PVdGoXQaCWlxSwnkNwT0Vznkmj93gOQUcTNGkDEvbiTpDOjoo3rZ2mS+1SEUJkW/JNZS
 p3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=fvuYML5uzQgIUwNz7fCS/6vO91+ePnv6G7iaXOVewbE=;
 b=UklyM34Gl60Hz9ruCiLnZ6Sj0Bs8FLmuhyCH9zwpHhH0ig9n/aO+HklntfTjqJTq3y
 V45ScmwIFz5NULZpbxA61pW7c8RpfWkwZahCGgWqvb3ckmLG2rn2zl/cQvzrhfEMN+hK
 etxIFa5SFaOLLKxtAXV87NamJZRPtRmppblk72TZTSNVFYlxlKRX5iy1WoKhlhKrOXs8
 130fOBA8iKyj4qxM8iIM5pFkzijt7XIDFeLyU5VAkFfs4mUtENWa7U+eH7fe4LGUOIL2
 XNaTA7X/ze2YnSBEUVCF0tJuWlGjqtK/Gt00LausbqKaQokDNr8hIqKKwY4IOOM7ZBi9
 RBGA==
X-Gm-Message-State: APjAAAVJmHho8/aDWs9sBlhnzFpd0aBoW9cVlsPGWK9hH7mFtHWpo/4c
 AbFEejwHqQ4hEuekNDacz1f+5Q==
X-Google-Smtp-Source: APXvYqyMCUI3j/PylnvKJ/FaopK/bHzh4vEpw/kHIraAfhhNgKnEs1KXhjU6FRT2a0v5mz1ckRca9w==
X-Received: by 2002:a5d:81c6:: with SMTP id t6mr8927688iol.86.1561700828423;
 Thu, 27 Jun 2019 22:47:08 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 r5sm1049107iom.42.2019.06.27.22.47.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 22:47:07 -0700 (PDT)
Date: Thu, 27 Jun 2019 22:47:06 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 3/3] RISC-V: Update tlb flush counters
In-Reply-To: <20190429212750.26165-4-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906272243530.3867@viisi.sifive.com>
References: <20190429212750.26165-1-atish.patra@wdc.com>
 <20190429212750.26165-4-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_224709_436375_6D75E502 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 linux-mm@kvack.org, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Changbin Du <changbin.du@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 29 Apr 2019, Atish Patra wrote:

> The TLB flush counters under vmstat seems to be very helpful while
> debugging TLB flush performance in RISC-V.
> 
> Update the counters in every TLB flush methods respectively.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

This one doesn't apply any longer.  Care to update and repost?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
