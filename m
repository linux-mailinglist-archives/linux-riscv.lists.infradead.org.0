Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43CF850F1
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 18:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=aoIlUJfvhvhSKYb6+CbU/AsbIqROD/yReO6KU/JQGmM=; b=PKK6GgzU8CtwdMjoV4PyDV/A3
	Y2UZfI7v6vIOJdAFUnaGJ3Qq6ciGUEc3745tWMy79k2X1mWMt+GFavy9y6G3fUPyej6QXbaeC4jgT
	8XScmWObvVN59pDVnHbLo7tLzH+kTF48KpawaBQNaYY9lGbv9scloTfPsD/7EoK8uBq/slKnYZf/r
	WbockZdwrmMum1y0PzKKj7xgLWo1GaQuoHetjAkV9oFC8uJSdIQ2xaCd3UOMYclzs1uv/O1lpj4OX
	dL2GZVIUsjBndd6+8MvXBbm2pBZId5BBLAjT1URzfLc+bmv8IebESurCf9NV24FJWAaa8SBO/S2YW
	IpEwHz9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOfo-00062B-Pv; Wed, 07 Aug 2019 16:20:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOfj-0005y9-4B
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 16:20:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id m9so41393487pls.8
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 09:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=zdXpc4sHpuyR/XCLCaxASYs6IQPhe894MvifJxuUKDY=;
 b=bpH/06BnzUA9+ZqA6qzS/B4qU+dimFzNTr0RlRGc0Fq5Yjf8acu9/+WDDP8WEknq/1
 7d8FDcvJxbWPzS9GkQJxNtL9hZGohCKzlYwAZ6PABsqGCJtOsIhkzzEjx8IqVoSBMj1s
 Iq7b1szOAHm4fqKd/MQBGj0vymGMzBQwYJECL66NjsHIo2sutCc+yeYAcyR7OOCzVaPR
 BW20IA1YX/K/ZokGqK+Y2AF6L8fpj4PyQBsNa1OoNEpKDi0E/cOV+/BhZ+i2LSbp9xd4
 RhfXZ/ZAKiwJBUaj1ZHqRGyiwXS+6YfGLioEg1fgRAypDF5N2KAMILLu8zDMiKoKfWnC
 7w8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=zdXpc4sHpuyR/XCLCaxASYs6IQPhe894MvifJxuUKDY=;
 b=PIEopPG2mRYiXpCvxollvjS0zwUoMWYwDHhxnDOxKlpAK7uFk5PGARnPW0hA3ch6Rm
 EWpEgWcwjmIcaLN6P4IhyZnhOBUFy13tiuvm/5pE2xh1UahsqEwDtufrDAlTXNue5g5i
 Ljog4jE6P6a48Q6eVHD1xts0gqFz90/klwuqnEeNEAFuKeYQF3EhjNfON73yhmS33ekv
 /l319+No3FzJN/g6gX5GHfBW/0gN61z8V/fRezYJjPWyyTYnDGCqCyCFFcx3SGDr65Jh
 7WBtFMBhHG18zPqzA9M7CSkmNT5JfziiDO0xrPRTlq++HN+4MS59a7lxpiwUJkTR5G/F
 uhkw==
X-Gm-Message-State: APjAAAWGunXHf/ERGfaxsYUbdOaGqgmYg027QPnlUfWn+j3K0eySJjuL
 rDXmUvupInAN2OwP0yBYTw0c2w==
X-Google-Smtp-Source: APXvYqyw1rQHbTCAjQdygvE0aT61eyJ0znZpiutYEO6zwfEI6liF+OCkSgzHqrTYT1bXmMChnjd6Kw==
X-Received: by 2002:a62:f202:: with SMTP id m2mr10528831pfh.6.1565194818021;
 Wed, 07 Aug 2019 09:20:18 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id g66sm90024297pfb.44.2019.08.07.09.20.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 09:20:17 -0700 (PDT)
Date: Wed, 07 Aug 2019 09:20:17 -0700 (PDT)
X-Google-Original-Date: Wed, 07 Aug 2019 09:13:52 PDT (-0700)
Subject: Re: [PATCH] riscv: kbuild: add virtual memory system selection
In-Reply-To: <20190807151229.GA16432@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-5bc65289-4805-46a0-aa16-404b2be270fd@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_092019_204697_255B908A 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, alex@ghiti.fr,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 07 Aug 2019 08:12:30 PDT (-0700), Christoph Hellwig wrote:
> On Wed, Aug 07, 2019 at 09:04:40AM +0200, Alexandre Ghiti wrote:
>> I took a look at how x86 deals with 5-level page table: it allows to handle
>> 5-level and 4-level at runtime by folding the last page table level (cf
>> Documentation/x86/x86_64/5level-paging.rst). So we might want to be able to
>> do the same and deal with that at runtime.
>
> Yes, following the X86_5LEVEL model is the right thing.

I poked around a bit with this last night, but our paging implemention is super
ugly so it'd be better to clean all that up first.  No idea when I'll have time
to do so...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
