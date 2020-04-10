Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311E01A4A7E
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Apr 2020 21:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSDLH5WsDUY0Ls+Yi5DMpK6wFwspuCJoAo5jQ7V/Ijc=; b=Ny++SZ5XtA6FpA
	gLN5WLs+0rxT4gAgOxnb5Kx0KEng0O0l4u/vzbxwMJTHS6FkpvJvnE70bxVzOG/kDfcmv9qbbzNgG
	2zvE6liHx05isgqyNn3HkiuPja537QPcjm7tGcX0Z3zRwDZKUngMvfuYs/VpPG5NaGM3GvtxpfDwJ
	k9mOyB/R2MlHoI7rdGOGckVsfDKXmkhL+yUSxVvZdonYMFAHIzM62W02lNlxWMQILiz7rmvT9iZOf
	uN/t19Pe/OsLhbyoI47zPlVwDi3H45XqZzKFFF/H22tF29E81Jsx578ly3jC7iXDduGnb/B8URG8E
	om30yVWeFlMdkyXp4Gzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMzQ8-0002nI-0u; Fri, 10 Apr 2020 19:34:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMzQ3-0002ls-8w
 for linux-riscv@lists.infradead.org; Fri, 10 Apr 2020 19:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586547265;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pSDLH5WsDUY0Ls+Yi5DMpK6wFwspuCJoAo5jQ7V/Ijc=;
 b=HTjtrTCPCtqlucaZeYXO9hdRWKKNAckT7ekZDJXF4mJhpipaNA9I2CNaZ2kSj9hZ8JMDfd
 x8O+SqhSx6dStv8V30+AeWP2e15nVJrSHFhqsats/yWfEKX2i5V8jL8upV5bG1UT+dmM/5
 7kohKTXNMLmKBR1LDF3Ev3cAOymTgN8=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-PlY-P95PPnqEMV4gQshsIQ-1; Fri, 10 Apr 2020 15:34:23 -0400
X-MC-Unique: PlY-P95PPnqEMV4gQshsIQ-1
Received: by mail-qv1-f72.google.com with SMTP id z16so2438874qvo.4
 for <linux-riscv@lists.infradead.org>; Fri, 10 Apr 2020 12:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dR0pnT92lTl7PiXH1/vycyqLlKqG/upjftJ1HpISkMA=;
 b=lyIDLtkRgC25lXIqoINg4HM+ww+3svH+KAOnpfSJMhUVM9FuQYDoqu1dTzFwh5yz6K
 VK3C4WyqnhVYRqg+45oYgaJPoPFKx44JkA49BODI7YywYsGIR8fNVkOJR4qO9u2EzoX3
 qJVl+FelQ1NAgwo5X0mGQUly/fsbxGJhHn/CUUxBml+/as+ty9ckG3aASODne9BHhYLo
 hGw0vcVXif99gdCLP1qb552kJnMZe8tJ4RraTsU51wkpPyXySeOzgcys8QChRVTNpdvc
 0zFyhdSrUM1t/R5qxTnuQ0f/IOQ9VmoAVDtSG2FkNc0SemMeNrH/Imr5ruZMTPnTh5Mo
 k2cg==
X-Gm-Message-State: AGi0PuaRFUXFnckH4dOzM4HUHLyhKFMulw6UT+sbXif7nlTzBX50bLTk
 EKFLj4NZI0qd2PAcG3TXX9pX6eWOfiF0bN7ZKCIZknURvqLMNBtzmFJauVANolSCvAvLvz2mJwx
 uLjUMvDuss9VshfFEDYnbTRX2F27G
X-Received: by 2002:ac8:6d06:: with SMTP id o6mr768751qtt.165.1586547263230;
 Fri, 10 Apr 2020 12:34:23 -0700 (PDT)
X-Google-Smtp-Source: APiQypKE+9gdKAAzqM7E075abKl7yEhzpSisddiPAFgdbjLHprLwAVDEdymEnBo0qMB8GT4NFqVJjg==
X-Received: by 2002:ac8:6d06:: with SMTP id o6mr768725qtt.165.1586547263017;
 Fri, 10 Apr 2020 12:34:23 -0700 (PDT)
Received: from xz-x1 ([2607:9880:19c0:32::2])
 by smtp.gmail.com with ESMTPSA id m11sm2214328qkg.130.2020.04.10.12.34.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 12:34:22 -0700 (PDT)
Date: Fri, 10 Apr 2020 15:34:19 -0400
From: Peter Xu <peterx@redhat.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v2 3/4] hugetlbfs: remove hugetlb_add_hstate() warning
 for existing hstate
Message-ID: <20200410193419.GF3172@xz-x1>
References: <20200401183819.20647-1-mike.kravetz@oracle.com>
 <20200401183819.20647-4-mike.kravetz@oracle.com>
MIME-Version: 1.0
In-Reply-To: <20200401183819.20647-4-mike.kravetz@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_123427_388129_9DDC6C35 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S . Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 11:38:18AM -0700, Mike Kravetz wrote:

[...]

> @@ -3255,7 +3254,6 @@ void __init hugetlb_add_hstate(unsigned int order)
>  =09unsigned long i;
> =20
>  =09if (size_to_hstate(PAGE_SIZE << order)) {
> -=09=09pr_warn("hugepagesz=3D specified twice, ignoring\n");
>  =09=09return;
>  =09}

Nitpick: I think the brackets need to be removed to follow linux
coding style.  With that:

Reviewed-by: Peter Xu <peterx@redhat.com>

--=20
Peter Xu


