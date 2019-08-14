Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF0A8C71E
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 04:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lkrgXDPiwgt6Jx0NSTY8h27jbGR3S9NlF+peEIZ00s=; b=p53Qr7m528oAkf
	FTJFeQLLAoP5CKgb+zNex0lAXK5Dgq+eBK9XFcinWdoh5x7rrL+v4A0HZvG4sWDglh2xh6tZV7PPY
	y0KDUtSpywkCtX8EVRqDGDmxU/DB3LrnmpGFczDjPcY7O9epa6qb0sixor00xSYjORFXfN90BaTvS
	dcOCWfYpGU91LufYPXwVquoKGIB66HQqJZGLd3NEq13wViWwF2FCgQVgRw56Pl9JEcekK312YUoqy
	sVEeZ7prB+MDj9NJYU3OumN99b0KRg/Wnl6bbGqEdyAjXG5gTapOZkayihVKLPSsazoc1ju7/walS
	vpFq0Sm5WwNJfBWfxa8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxive-0007vq-AO; Wed, 14 Aug 2019 02:22:22 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxiva-0007vQ-3b
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 02:22:19 +0000
Received: by mail-ot1-x342.google.com with SMTP id m24so25882196otp.12
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 19:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=8BVuvw3t6MICKGaM59gUM2yEToQKCitDbig7bIPBipc=;
 b=mLHWVPc2XzViL5mr2TusnZ0mnC+7dlsKZVniZcvXdOrbNxLERbn3v/jwLoZeTYqVUn
 5g3/Jq6Aeziwxy0RpUY+5gdXMYhwuv/zlNhSHsK156/UvKGF0KVCRY3CQ3py/oXwYHCk
 113hKC85UTgw8T1FaOQuNFpYni9gBqLm+1DOyxf/sMFiel5z1A9q9t+k9YZ57NPlhJ2d
 +MIyZXqSMVf0ii3HgGKhHV+QM45ABReJ8WUEKavXRKdKIqjomC2lzjgMsIwg+vihBuCy
 8zOiMH0OXm1lKPv9Nu9TAYGR9NDXaJkA6VVW6jsz/0wGx85MZjpj8RjsDvccIK6LQ9b6
 POcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=8BVuvw3t6MICKGaM59gUM2yEToQKCitDbig7bIPBipc=;
 b=Yt3yYSj1hT7NvK3/4py8fhDeiSfzUeguS9+KRVhvHfHOFbQlZjtIvRDHRpsAyu797r
 mb46jOa+//vTOJ4eXVtQIKBWXrNPRooJypEklq5kkTtfozH76bcTPEHgpp0epZg+UXBe
 eYZvLoD6FOdWsVy505vdwNYxS2ufgHYVuyn7Za6K4MIZWgvZuBUDizwbDnkR3Tw4od9p
 aPUtrI6VbGb2loyUqJL1YqL2RIgZ7N8XOMuKgF1beSLCLkp5OJEpn2jRQEIKh4qhqvdi
 9bJYRh+ad/kHL5Euvny1oEychvWsokeRMNAvkgnNCPcISjI+g6bEWM5BQzZ4ynWvFghh
 n9qg==
X-Gm-Message-State: APjAAAXHaAIqNVCAOdncm/HbKo0B5CcODoUgrxg5YqxfQTgyFFuRxT5w
 Olc26Ywoj+Z9rhKhaGPqhaPLQA==
X-Google-Smtp-Source: APXvYqwneMyChwem1IZY1SgCchGO2nCncpWJ+r8g6Oc+o8I11BYTdeZNV/bjkZxCWbUx24fPg2ZFVA==
X-Received: by 2002:a5d:9752:: with SMTP id c18mr82018ioo.22.1565749336873;
 Tue, 13 Aug 2019 19:22:16 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 e22sm17331071iog.2.2019.08.13.19.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 19:22:16 -0700 (PDT)
Date: Tue, 13 Aug 2019 19:22:15 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 1/2] riscv: Add memmove string operation.
In-Reply-To: <mhng-ba92c635-7087-4783-baa5-2a111e0e2710@palmer-si-x1e>
Message-ID: <alpine.DEB.2.21.9999.1908131921180.19217@viisi.sifive.com>
References: <mhng-ba92c635-7087-4783-baa5-2a111e0e2710@palmer-si-x1e>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_192218_308489_DCBCF9D2 
X-CRM114-Status: GOOD (  17.39  )
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
Cc: zong@andestech.com, aou@eecs.berkeley.edu, nickhu@andestech.com,
 alankao@andestech.com, Atish Patra <Atish.Patra@wdc.com>,
 Greg KH <gregkh@linuxfoundation.org>, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Christoph Hellwig <hch@infradead.org>, alexios.zavras@intel.com,
 glider@google.com, green.hu@gmail.com, aryabinin@virtuozzo.com,
 tglx@linutronix.de, deanbo422@gmail.com, linux-riscv@lists.infradead.org,
 dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Palmer Dabbelt wrote:

> On Mon, 12 Aug 2019 08:04:46 PDT (-0700), Christoph Hellwig wrote:
> > On Wed, Aug 07, 2019 at 03:19:14PM +0800, Nick Hu wrote:
> > > There are some features which need this string operation for compilation,
> > > like KASAN. So the purpose of this porting is for the features like KASAN
> > > which cannot be compiled without it.
> > > 
> > > KASAN's string operations would replace the original string operations and
> > > call for the architecture defined string operations. Since we don't have
> > > this in current kernel, this patch provides the implementation.
> > > 
> > > This porting refers to the 'arch/nds32/lib/memmove.S'.
> > 
> > This looks sensible to me, although my stringop asm is rather rusty,
> > so just an ack and not a real review-by:
> > 
> > Acked-by: Christoph Hellwig <hch@lst.de>
> 
> FWIW, we just write this in C everywhere else and rely on the compiler to
> unroll the loops.  I always prefer C to assembly when possible, so I'd prefer
> if we just adopt the string code from newlib.  We have a RISC-V-specific
> memcpy in there, but just use the generic memmove.
> 
> Maybe the best bet here would be to adopt the newlib memcpy/memmove as generic
> Linux functions?  They're both in C so they should be fine, and they both look
> faster than what's in lib/string.c.  Then everyone would benefit and we don't
> need this tricky RISC-V assembly.  Also, from the look of it the newlib code
> is faster because the inner loop is unrolled.

There's a generic memmove implementation in the kernel already:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/string.h#n362

Nick, could you tell us more about why the generic memmove() isn't 
suitable?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
