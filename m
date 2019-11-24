Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03228108149
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 01:43:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3CSEMiu9TKmUi+A+137HyTuu/bv1zt58M00+FV0EkQ=; b=XXqpYDFAkCgryZ
	uUVIOIxB34ERKMCEZXnNsgdIEeY24t9+SmJchYus0BR4rBXWXV/LQ9/UUfHyoZIXY2kqWRalcORD+
	FABpNu07+a++RSTt/TX5QJk6HAx8fRXULd6UfjXjzZ/QC5CMDku4YZ1s9rWgKRKqZypYvOAJCc9eN
	ShWpVtYQJ4qfq+aascMySMBrniipkEHpAUYI5kl1wI/I41bRKX4t+z/Q1PSgXoX+2hdrlwIxthFWX
	1hezKx7Jj58/CWe9F41PacxwZ3/D+OJDWoiQ3Y2xzogNRUxt48nVuhUHQR6GZvdPYLocOrlii7FNX
	cLjCArL7y5y46U1x6HsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYfzN-0005Gh-3p; Sun, 24 Nov 2019 00:42:57 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYfzJ-0005GA-22
 for linux-riscv@lists.infradead.org; Sun, 24 Nov 2019 00:42:54 +0000
Received: by mail-io1-xd43.google.com with SMTP id k24so1550021ioc.4
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 16:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=NEwv7Ctd0s3pJvZSJKBeLbu9Xr1mygbb2DEuKdPu16s=;
 b=if7QJoKESnrgCMXT6dXWrS3POLEX6gzFKSI2QBITCLDOuQwihjB5pDMq1XTWZikyTx
 vMfnXNW6WlMUhLxKdnDu2mBNqJpUOe6BYucrvWJVki0i9E0mI0CGdS6bMYRg8BtirZdO
 mUZeWdX+pgMd86tkC/3RIBHEhnaUqdCfwKIUlX0/YhP5ZefPpoNqFj5mwBidZVO8kHUx
 Ppv7qHOvnCJ7RYyPlULmbm7hw+vSWeSNHsvd5rM8rNCs5a+U1U6az9eZXJWl7UfZdfNC
 GAolbxm2pTzYFV5im2d1hVCEjNZ4Euelf3gHL6LbrYOgbuRmL+b9SURUpW4/5le+H4y8
 0Xtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=NEwv7Ctd0s3pJvZSJKBeLbu9Xr1mygbb2DEuKdPu16s=;
 b=jZQoXe94fvUYsyEDEtHtU/XuVC9GU4VOMj7qvRkJ2/UxJVzA6rly+j62DludspgNNa
 UyCqGCwIgmUVawpIovrQbT0UWgBS5+P5UiN6c/qdxx+IGcxbwkVa5IFyHj1ljjTQyGBY
 gxvF0ycfnItGUcm2Me/LG9oA0l44241HfZyuTITyqVvDj/QjNhL5Lxtz2oIfQSLCWSbv
 UNaKbbUZPpYkRH4hRffA+sDBRFckfo/ImTZcM8og4Lvtt2zjXcmnwyoX9Xfak9mRLX/9
 9ZDtu/veF5ftlGmGN7YLYM9Ga6Yvu4o6CkJBiLshK1IGZA8Ou/ZBqTjrx9nW9/e4LSSh
 zexA==
X-Gm-Message-State: APjAAAU+8kSy7Q4z7ytqNrHeYabamOiyTn+WkpKLXhBI5eExUiDjV43s
 Z3sAxYknv7iwTJCuPImnaN8ktA==
X-Google-Smtp-Source: APXvYqzIb0dcVyYwRcg7Tk3IeMdpucAz41uHdS6zoLje+ty3GvbO5r/l90RSc3TvkKoSDvIhz0kmBA==
X-Received: by 2002:a02:7708:: with SMTP id g8mr11003741jac.9.1574556171387;
 Sat, 23 Nov 2019 16:42:51 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id e13sm622547iom.50.2019.11.23.16.42.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 16:42:50 -0800 (PST)
Date: Sat, 23 Nov 2019 16:42:49 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
In-Reply-To: <CAPcyv4hBNfabaZmKs0XF+UT9Py8zJqpNdu5KsToqp305NASKNA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1911231637510.14532@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
 <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
 <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231546450.14532@viisi.sifive.com>
 <CAPcyv4hBNfabaZmKs0XF+UT9Py8zJqpNdu5KsToqp305NASKNA@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_164253_131267_8BF75737 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 23 Nov 2019, Dan Williams wrote:

> I took a look, and I think the content would just need to be organized 
> into the proposed sections. The rules about what level of ratification a 
> specification needs to receive before a patch will be received sounds 
> like an extension to the Submit Checklist to me. So I'd say just format 
> your first paragraph into the Overview section and the other 2 into 
> Submit Checklist and call it good.

I'm fine with doing that for this patch.

Stepping back to the broader topic of the maintainer profile patches, one 
comment there: unless you're planning to do automated processing on these 
maintainer profile document sections, it's probably better to let 
maintainers format their own profile documents as they wish.  

Just to use the arch/riscv document as an example: the last two 
paragraphs, to me, don't belong in a "submit checklist" section, since 
that implies that the text there only needs to be read before patches are 
submitted.  We'd really prefer that developers understand what patches 
we'll take before they even start developing them.

I imagine we wouldn't be the only ones that would prefer to create their 
own section headings in this document, etc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
