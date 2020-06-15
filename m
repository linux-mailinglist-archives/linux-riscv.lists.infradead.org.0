Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452441FA2E7
	for <lists+linux-riscv@lfdr.de>; Mon, 15 Jun 2020 23:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ItwxuioZVdA5XdCXR1QbAewm4+8qdb0KbH1lb+9ehrA=; b=lbuNZpsrWEvVn+Ds8VquKVgSQ
	Wku3Jd5Qons/vSiYWcVM6Xy1lBVkOZxH3f1AaQcjpvDfCa48wgZ0UwRlUjZuEDNbTZklPqUMrbt0+
	LforLzXTN/2AQZeTk+SvF70SQDbOCNQKX1FuGrh9i15+vT6P7+8iyadRA8GWejq2SHTtOJnSlnhgJ
	MeaPTuEyCj47ISDaQjujRJ9eCESWbec4Mm48ff2rVWfPYSN5HBFD42ATtaQbBqWiVdYKLBV01MMqS
	bOapnvwZJ54dRfKJyKJC7NalrinSaZudw9a7Zwi37Q7y3DX4KYlN3wmnXoElzhKs0YTUBjXenhZ5H
	GaC7de+uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkwko-0007eU-M2; Mon, 15 Jun 2020 21:34:54 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkwka-0007VX-H6
 for linux-riscv@lists.infradead.org; Mon, 15 Jun 2020 21:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592256876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ItwxuioZVdA5XdCXR1QbAewm4+8qdb0KbH1lb+9ehrA=;
 b=gVPACN6xO1SeIGsjRKFWvtdrnZBydlA/xLaXlBTA9ukZGl8rrSHTnjN2uogdd2Fc4Dt43t
 N034oGy0lR/F8iU1msOQSncDNnrtFpLzDG+Yj7bkEUSC/23fQh5XZcOAkeqq2c9/GUp5z8
 vlzphSUVDu2xnhW42LAOptOJw/OIneY=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-cm2m5tClPQmlVlNAeSiFDg-1; Mon, 15 Jun 2020 17:34:34 -0400
X-MC-Unique: cm2m5tClPQmlVlNAeSiFDg-1
Received: by mail-qt1-f200.google.com with SMTP id y7so15090109qti.8
 for <linux-riscv@lists.infradead.org>; Mon, 15 Jun 2020 14:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ItwxuioZVdA5XdCXR1QbAewm4+8qdb0KbH1lb+9ehrA=;
 b=enmFwalAy0TCWYdYk2o+OARdDFP6nX/8nO9z9JtWz/ndrBohamAGBdwoqhzEHXWquT
 AGiYitWGiMDLgVwsI4OW9GrHUXWeTkOa8xFhGYBuMBCS+pUPCH+KuODgqEvgWY0Whs+l
 YorNyUIIepKreFclFZxAIKd38SaBaOt+e2lnjax0K0d4Atwj662WWE7By7YEBD3Pw8n+
 ZntisPePfII8zKe3LxhU7eKOZGMNXvEDm6uzf0LF2ORlTRkkMIUKUyLGTbSK277GZaVE
 iU6FaW1XuGp2gDJ18t/H0r6FszQ0W8cN8Cl9zoNiOiw5eHNF9zCJxtj7j9QoUmmb+CcW
 5kKA==
X-Gm-Message-State: AOAM530iXPDoOstkrH5pFc25ezUOxgjCkN5ygMWd6biEFA/KePexeKja
 Mf1XQmX6f4CVIKruOoXKPtZe7PMB+KfAyJT93y0H9r6N7qaWOD1lpvqDNNgRqVhfE3gQZq4d6Iu
 kpqtmwST72zEuBdQlkvCicQzxsviz
X-Received: by 2002:a0c:ed31:: with SMTP id u17mr25540572qvq.117.1592256874107; 
 Mon, 15 Jun 2020 14:34:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz0iHGiHde51cucRTUPE7NzfM/1jQRbNlFV4ChXmFExBXup/Ay4TPRKGywEeToUwHIWcL2Psg==
X-Received: by 2002:a0c:ed31:: with SMTP id u17mr25540552qvq.117.1592256873805; 
 Mon, 15 Jun 2020 14:34:33 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id f30sm12961493qtb.9.2020.06.15.14.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 14:34:33 -0700 (PDT)
Date: Mon, 15 Jun 2020 17:34:31 -0400
From: Peter Xu <peterx@redhat.com>
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Subject: Re: Possible duplicate page fault accounting on some archs after
 commit 4064b9827063
Message-ID: <20200615213431.GC111927@xz-x1>
References: <20200610174811.44b94525@thinkpad> <20200610165023.GA67179@xz-x1>
MIME-Version: 1.0
In-Reply-To: <20200610165023.GA67179@xz-x1>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_143440_635560_3265A389 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arch@vger.kernel.org, linux-hexagon@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Andrea Arcangeli <aarcange@redhat.com>,
 linux-xtensa@linux-xtensa.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, Nick Hu <nickhu@andestech.com>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 12:50:23PM -0400, Peter Xu wrote:
> On Wed, Jun 10, 2020 at 05:48:11PM +0200, Gerald Schaefer wrote:
> > Hi,
> 
> Hi, Gerald,
> 
> > 
> > Some architectures have their page fault accounting code inside the fault
> > retry loop, and rely on only going through that code once. Before commit
> > 4064b9827063 ("mm: allow VM_FAULT_RETRY for multiple times"), that was
> > ensured by testing for and clearing FAULT_FLAG_ALLOW_RETRY.
> > 
> > That commit had to remove the clearing of FAULT_FLAG_ALLOW_RETRY for all
> > architectures, and introduced a subtle change to page fault accounting
> > logic in the affected archs. It is now possible to go through the retry
> > loop multiple times, and the affected archs would then account multiple
> > page faults instead of just one.
> > 
> > This was found by coincidence in s390 code, and a quick check showed that
> > there are quite a lot of other architectures that seem to be affected in a
> > similar way. I'm preparing a fix for s390, by moving the accounting behind
> > the retry loop, similar to x86. It is not completely straight-forward, so
> > I leave the fix for other archs to the respective maintainers.
> 
> Sorry for not noticing this before.  The accounting part should definitely be
> put at least into a check against fault_flag_allow_retry_first() to mimic what
> was done before.  And I agree it would be even better to put it after the retry
> logic, so if any of the page faults gets a major fault, it'll be accounted as a
> major fault which makes more sense to me, just like what x86 is doing now with:
> 
> 	major |= fault & VM_FAULT_MAJOR;
> 
> I'm not sure what's the preference of the arch maintainers, just let me know if
> it's preferred to use a single series to address this issue for all affected
> archs (or the archs besides s390), then I'll do.

To make sure this won't fall through the cracks... I'll give it a shot with a
single series to address this issue for all archs.  Although it might not be
easy to do accounting directly in handle_mm_fault(), it might be still a chance
to introduce a helper so the accounting can be done in general code.

Thanks,

-- 
Peter Xu


