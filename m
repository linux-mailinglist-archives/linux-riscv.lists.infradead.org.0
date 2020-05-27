Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45381E401D
	for <lists+linux-riscv@lfdr.de>; Wed, 27 May 2020 13:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L3VG+r4IL3PqDE0NrR8AJTqa7Bz6Bcn6dDbe0ZST8RI=; b=YSL4eEw//+7XpMgCO7OYt/18h
	uBi42z1tmESLVp6B/8mMKqV3f2nR9uTDHi8aR7qKdZp06e3bmNyO0gyrdDeEwzhBsPXBnHB7ASPJu
	r0diHCko6PfdGEZztnMwbeVMIpQKpojaS68lY/EaE8z+3KeQyo8l5+mbvV968359cQwx0vcif7goq
	O7XcpHdA3HIzEAEW8tppoN/v7Wmn+C3BEzq13rgSbO5LaC4NE4lnjCo8Kg69wJZsR7oOIcUwpCotk
	zT/YqWlMEEi3gQ+tSb9halPRiMezvYZdCks1A1qr0rfq18GvnDkgq/2vlTG92Y+5Sp5zKNhldjan/
	uz1r/4otg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduIw-00082y-PI; Wed, 27 May 2020 11:33:02 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduIv-00082p-8I
 for linux-riscv@bombadil.infradead.org; Wed, 27 May 2020 11:33:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=L3VG+r4IL3PqDE0NrR8AJTqa7Bz6Bcn6dDbe0ZST8RI=; b=njMi/RAVZaHxhqmi1aEUnpHXKo
 e24x+HQpwu1xmlx6yIGyj0Jur24IiKOjpNF8e1Uyg42kpK4B8jWl/jk4xz5l0O2Tbj7Zl9alh8H31
 y7a7bauz2hdH5LiX9PAt+zcMl5DiHWBoDw1AngP0RQTyItTbCugZAf0IycElmID2/sTildF9WFXke
 8zLzxJ4o/aHwE3Wnik5eYbIMU7KDxlTy3E0klANfwKVYG6VDJwgLnC2gL7gokPjwhfyF2AsoQnpAx
 z6WM2g8QfbNrFXjNiTQotkj+eB3Bb3OS+G75y6EfKPSIi+sTKiIURAGxx9rvFs5NLo62igGb+7mCj
 FJhsrguA==;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduIu-0002br-7B
 for linux-riscv@lists.infradead.org; Wed, 27 May 2020 11:33:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590579130;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=L3VG+r4IL3PqDE0NrR8AJTqa7Bz6Bcn6dDbe0ZST8RI=;
 b=Zdeqej5YIcLpUNlskfRACMBF4zIcuzBgzFm/o8+sFqQ1W2iIN52yznXAfhtQ+bNFVpFJrN
 sMOF1LnlWhv7s7B76mVOb3t1+gu8lbjFpf+m4X/fk5Fq232PW1NBbxZWMqXApD4a8MMY4a
 a2ngxFunoS407FRle+iLwx5as7PMiPI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590579150;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=L3VG+r4IL3PqDE0NrR8AJTqa7Bz6Bcn6dDbe0ZST8RI=;
 b=RCBqAOXgfDmft1Yij4D691sj5KhYlxpORQT+1456X1qdNEemnaIqqf//jL5txK2FAO7kK3
 +sRxzEkqaj4jYmmPQm/ql1Bgxue/Xv9etjzwY6XSfchFMSYE8PpcNKELKbnSX7pVpDlgGx
 1idtmm/9rjJvW1MEuIvigluc1vYFKYQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590579179;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=L3VG+r4IL3PqDE0NrR8AJTqa7Bz6Bcn6dDbe0ZST8RI=;
 b=O2k3eiWeUK1UzLPuM8K2ztZdI+4QnDB6Qq1C167b373lZUdbPhePurDaf2McAvaWeZW3dT
 wNoAEDjy9bEaYiET7ZaxgbRD67nSp49YC+edryBHwPFN3ddxmDzKdA1ZiBndtvgOi7ue8n
 DK0G7n4UUPzHnEHOUTzebDUuNOiTnwg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-JcGnGmc4PV2vYDXpIgofAA-1; Wed, 27 May 2020 07:32:06 -0400
X-MC-Unique: JcGnGmc4PV2vYDXpIgofAA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA331461;
 Wed, 27 May 2020 11:32:02 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.40.192.182])
 by smtp.corp.redhat.com (Postfix) with SMTP id 66FED12A4D;
 Wed, 27 May 2020 11:32:00 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Wed, 27 May 2020 13:32:02 +0200 (CEST)
Date: Wed, 27 May 2020 13:31:59 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [RFC PATCH v4 01/13] ptrace: Use regset_size() for dynamic
 regset size.
Message-ID: <20200527113158.GA9100@redhat.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <3700190a602a6d30fcbf76e1eea667e29a65c4c9.1590474856.git.greentime.hu@sifive.com>
 <20200526140027.GC24212@redhat.com>
 <CAHCEehK7BnWUhjOAynCLP6puRo8EguMvf=N8iG5UMQmaD8ekCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHCEehK7BnWUhjOAynCLP6puRo8EguMvf=N8iG5UMQmaD8ekCQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
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
Cc: Guo Ren <guoren@linux.alibaba.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 05/27, Greentime Hu wrote:
>
> It seems I only needs to update this line, right?
> - kiov->iov_len = min(kiov->iov_len,  (__kernel_size_t) (regset->n *
> regset->size));
> + kiov->iov_len = min(kiov->iov_len,  (__kernel_size_t)
> regset_size(task, regset));

Yes, agreed.

Oleg.


