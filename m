Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB28108106
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 00:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSTtopUlOvutgLVcJ5RpflDoLxdLTYi8gwV0BpL0ToQ=; b=Ar8HsKBkdocHdC
	MjbMqrFyQIJdlgTR0owNceLDfgpX29KXAJ2Pe4SSosFA8tJwofB6JqLXCRlxUZZ28BZZBHdrtfASn
	pGVETA3O1OtV9YIS4+PcUp9lczZQArgmZmNNLjrM/3EZj8I59uJ7eD0vKfc5p03z4z9xtaPRK0gnE
	RQCcJCKyEVscxXmJIz6zYI8cMMKVOoOjHdkmXpotorS2vxj3JEkL+b4BECiq03lGMQ6tc+SJSf/B3
	mWffObEBdgnOcU0HzaczMTXCdosG0yJrgR5GhkZ55nxrV86WO6a74T0mCjW6ioKYE6M04WyfKkAX8
	4wpm9v2Hq20Rt/WoaR9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYeoL-0007fe-G4; Sat, 23 Nov 2019 23:27:29 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYeoH-0007ei-GE
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 23:27:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id z26so8572215iot.8
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 15:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=WS9mYTny3XR2p4bnvgnXxQTpacFjOo5Hsf/RJbveqqQ=;
 b=H6UXLQngKv9vBjOIOMqEtBhx81EPzmshinGBD4M/8N9CMpBibk7MmOPV2HyCavMDMC
 TGzLxdvRO+a5a4LVH/GhyCadWVvtkfvhziav/0vaVx50sdtLesVlfvb9ZhZHEJCCfO71
 7Rpa04BHMPURMllGZj/IvP+yP6kKwt/kA8fTi2HOYvDzEUvJN+efuy+NrxDHDYHjobzZ
 F94+0f40fDHM5MRVXx//Lr6XotniPckmjCBoz/Q74iGjgfB0QEN7s9RJLuC5OdtrRa96
 VDSljAxfpuOSk9IQ8jnEPO2187SIKkL8SDtpkaEnnUrbvpvcBg2Nus+Wv4kktQjRxbv2
 veew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=WS9mYTny3XR2p4bnvgnXxQTpacFjOo5Hsf/RJbveqqQ=;
 b=lZ5bJDtYn5cUPRBI4y7V9PN3KBB5K+Kk+Pt6D3k0/KsxiZVlJhfQcYGdOjo90ewKYg
 uXmdwbrdCCBJ9IBNhUVzbkRweF/3yU503VFUelQlkwkgrMvdUkUlWUHJj96eRLwHM0+p
 zTBDn5eW1FIJWZU6nw4+GpatxIi71/ZmsXHUiSdmgn6P7xPdXA5wl/NSi4OOQ+PfKpO6
 Ygn3JBzWlZaeYG5i4KlG/VEoUjciy9Oh4v5P5a/sCV+OviTE0GytN9R3gwIk6g+7XF69
 5jTyKOOvMOCripqyB4SBsABJEyQkNT+Onzr3b3PlCyHauokgkQE5M3KUAJnusPEMxuGd
 ejoQ==
X-Gm-Message-State: APjAAAWE2r5tWxQfwwWZApL5Hwi1knfFhX2BoHJs6H2ZlDG+uMItRUlG
 GUfXxKWE71jEeb7PWSp1Ky6lDg==
X-Google-Smtp-Source: APXvYqxsTcmC3b6H1e2CjD6Fb9bOaOP72eMrbl0d/oKosQ/7J2E1uiFt1sNA/gCGQneqkSXeSCUHhw==
X-Received: by 2002:a6b:700a:: with SMTP id l10mr19972718ioc.164.1574551642851; 
 Sat, 23 Nov 2019 15:27:22 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t14sm589551ioi.29.2019.11.23.15.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 15:27:22 -0800 (PST)
Date: Sat, 23 Nov 2019 15:27:19 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
In-Reply-To: <20191123092552.1438bc95@lwn.net>
Message-ID: <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_152725_747825_621DDE16 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Jon,

On Sat, 23 Nov 2019, Jonathan Corbet wrote:

> On Fri, 22 Nov 2019 18:44:39 -0800 (PST) Paul Walmsley 
> <paul.walmsley@sifive.com> wrote:
> 
> > Formalize, in kernel documentation, the patch acceptance policy for 
> > arch/riscv.  In summary, it states that as maintainers, we plan to only 
> > accept patches for new modules or extensions that have been frozen or 
> > ratified by the RISC-V Foundation.
> > 
> > We've been following these guidelines for the past few months.  In the
> > meantime, we've received quite a bit of feedback that it would be
> > helpful to have these guidelines formally documented.
> 
> If at all possible, I would really love to have this be part of the
> maintainer profile documentation:
> 
> 	https://lwn.net/ml/linux-kernel/156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com/
> 
> ...if we could only (hint...CC'd...) get Dan to resubmit it with the
> needed tweaks so it could be merged...

It looks like the main thing that would be needed would be to add the P: 
entry with the path to our patch-acceptance.rst file into the MAINTAINERS 
file, after Dan's patches are merged. 

Of course, we could also add more information about sparse cleanliness, 
checkpatch warnings, etc., but we mostly try to follow the common kernel 
guidelines there.

Is that summary accurate, or did I miss some additional steps?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
