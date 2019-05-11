Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D621A977
	for <lists+linux-riscv@lfdr.de>; Sat, 11 May 2019 22:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f13+EUY17Ok2LXYCsKCT+WH66w5jsSvNBZbaOw90IJM=; b=X9VAo9ckrZ3+0p
	3OtRDUoONkB7LNirObrGQntmLQawrwXFPC6l1DdWcvnIxFTzZHnCb6gpJjwEb8ekWGblBh/5qIFp/
	Y+5rWz22+YENbQj0lcaLx33Pso1harghm4eAUwdPXQrgydnZTFo78uvqD5XOCItaUvwjEUoMwL7U4
	IP3SIArXJW0OvoIxW7TaAH4YZ49wBV3q/9OpevurSwLh+OAk0F+lZMTL/1wt6Vfm8UBlK+09rgY0e
	Do6JNRV0CjzY28wFsw28CRy7T9U4eDNTYpWKW6MNLmiBpdmvGTjxgWoQJNJy5hn9A9bp6VJ8kR/Su
	KalfKYiGpkKElEY23WSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPZ3o-0000IE-Qq; Sat, 11 May 2019 20:57:36 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPZ3l-0000Hv-Fh
 for linux-riscv@lists.infradead.org; Sat, 11 May 2019 20:57:35 +0000
Received: from excalibur.cnev.de ([213.196.205.140]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N0o7f-1gTB542I2X-00wkTo; Sat, 11 May 2019 22:57:15 +0200
Received: from karsten by excalibur.cnev.de with local (Exim 4.89)
 (envelope-from <merker@debian.org>)
 id 1hPZ3P-00048x-9K; Sat, 11 May 2019 22:57:11 +0200
Date: Sat, 11 May 2019 22:57:11 +0200
From: Karsten Merker <merker@debian.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
Message-ID: <20190511205711.pp54kufgret662xv@excalibur.cnev.de>
References: <20190501195607.32553-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501195607.32553-1-atish.patra@wdc.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Provags-ID: V03:K1:/xkbM78ealdbZdv6ETAtl6zu3DJ7y7eSvM3/2gU2x4ECT24NeAa
 rNckyR3vQzZx26gazhyfoMO9JxisyplzfzWdzXjBbBcCWjJztS1tdI+GcuvR8WKLGNEFIEf
 EHy/COzluWqK3GUcak3ovhmW2fdR9scfEKNQAiQjSKdtKflSnCU4CDxpgaDPlsLhuP27t/A
 5wTm4FmJaQGjOtyJsqz3g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qkYxWV8zqxQ=:C+40/wcclDkdRJjoNXAH9b
 foQwVXtiwpM4A22L8QPZYvhPA+dSAmKtPRoBPMSkIidqslY5MwRJLU1CuvgIcbTk5p30AmiZR
 2PorYLUQmAcN6M94BB5iOEBAySmi+3vOhBBgIewxM8Uw0pD2gv+5WQ+NfkX7pwapgrU8WrBs4
 WeMaPn6qz3l8BojlAGtkeXH1t/hitRot+IA4adf9Wnt8JpzAcVLjThULOtMsyzDhhXnZQ/Dlg
 P7AmExDg4+UNHqYyP2fCdsRb2rTIdtGW3tWlBflPuANZpWydhSOp4H7NqoS01ln6QU1yx4QRU
 zIgiBc06sPQfLT7lF5g18w2YZ+v2JwxlCK6RjY+AqJHZeHUmtEseTn5iT2W7Lfj/vtBxDIYYF
 fXOzHeAZ8go5YyUnltPL7OobTi6d1QXKPgRMFChkXoO+Sk24QN+vIDfHBveY2iD4nx56BSrtZ
 MN0EzwbZ5muF/N4p63DmNkG2s5QNZ/DJaXjwm/r13hx44+UrZ+Yiso0SqRFmxVLnz63UdeVMW
 1dggahU8zMKYT0kw3zqP+dEwra+oMQt1+3wgTFz5XTzKwBKL4AJn8Zm02zUov8J0aJgzG2b0L
 hMAVG3Fs0ml96w4kS7UI5Ca6kBNLc5FLbbaNV64Ho+Gm9cVp2B2qKCrCGEowJYDsn6TgFuFT+
 o73uxQ8mx6fWHHDt8ipn6dMfWfi752VxvDXzVFO11BR/eNtn3bvSc4AdNWCEz0d+JQrNfF5bw
 oyg65AGEOMnO0HAVhLuYvQOXaTva6K0VFFDYiA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_135733_829633_AC755A94 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Zong Li <zong@andestech.com>,
 Atish Patra <atish.patra@wdc.com>, merker@debian.org,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMDEsIDIwMTkgYXQgMTI6NTY6MDdQTSAtMDcwMCwgQXRpc2ggUGF0cmEgd3Jv
dGU6Cgo+IEN1cnJlbnRseSwgbGFzdCBzdGFnZSBib290IGxvYWRlcnMgc3VjaCBhcyBVLUJvb3Qg
Y2FuIGFjY2VwdCBvbmx5Cj4gdUltYWdlIHdoaWNoIGlzIGFuIHVubmVjZXNzYXJ5IGFkZGl0aW9u
YWwgc3RlcCBpbiBhdXRvbWF0aW5nIGJvb3QgZmxvd3MuCj4gCj4gQWRkIGEgUEUvQ09GRiBjb21w
bGlhbnQgaW1hZ2UgaGVhZGVyIHRoYXQgYm9vdCBsb2FkZXJzIGNhbiBwYXJzZSBhbmQKPiBkaXJl
Y3RseSBsb2FkIGtlcm5lbCBmbGF0IEltYWdlLiBUaGUgZXhpc3RpbmcgYm9vdGluZyBtZXRob2Rz
IHdpbGwgY29udGludWUKPiB0byB3b3JrIGFzIGl0IGlzLgo+IAo+IEFub3RoZXIgZ29hbCBvZiB0
aGlzIGhlYWRlciBpcyB0byBzdXBwb3J0IEVGSSBzdHViIGZvciBSSVNDLVYgaW4gZnV0dXJlLgo+
IEVGSSBzcGVjaWZpY2F0aW9uIG5lZWRzIFBFL0NPRkYgaW1hZ2UgaGVhZGVyIGluIHRoZSBiZWdp
bm5pbmcgb2YgdGhlIGtlcm5lbAo+IGltYWdlIGluIG9yZGVyIHRvIGxvYWQgaXQgYXMgYW4gRUZJ
IGFwcGxpY2F0aW9uLiBJbiBvcmRlciB0byBzdXBwb3J0Cj4gRUZJIHN0dWIsIGNvZGUwIHNob3Vs
ZCBiZSByZXBsYWNlZCB3aXRoICJNWiIgbWFnaWMgc3RyaW5nIGFuZCByZXM1KGF0Cj4gb2Zmc2V0
IDB4M2MpIHNob3VsZCBwb2ludCB0byB0aGUgcmVzdCBvZiB0aGUgUEUvQ09GRiBoZWFkZXIgKHdo
aWNoIHdpbGwKPiBiZSBhZGRlZCBkdXJpbmcgRUZJIHN1cHBvcnQpLgo+IAo+IFRlc3RlZCBvbiBi
b3RoIFFFTVUgYW5kIEhpRml2ZSBVbmxlYXNoZWQgdXNpbmcgT3BlblNCSSArIFUtQm9vdCArIExp
bnV4LgoKSGVsbG8gUGFsbWVyLAoKaXQgd291bGQgYmUgZ3JlYXQgaWYgdGhpcyBwYXRjaCBjb3Vs
ZCBnbyBpbiB3aXRoIHRoZSA1LjIgbWVyZ2UKd2luZG93LiBJcyB0aGVyZSBhbnl0aGluZyBwYXJ0
aWN1bGFyIGJsb2NraW5nIGl0cyBhY2NlcHRhbmNlPwoKUmVnYXJkcywKS2Fyc3RlbgotLSAKSWNo
IHdpZGVyc3ByZWNoZSBoaWVybWl0IGF1c2Ryw7xja2xpY2ggZGVyIE51dHp1bmcgc293aWUgZGVy
CldlaXRlcmdhYmUgbWVpbmVyIHBlcnNvbmVuYmV6b2dlbmVuIERhdGVuIGbDvHIgWndlY2tlIGRl
ciBXZXJidW5nCnNvd2llIGRlciBNYXJrdC0gb2RlciBNZWludW5nc2ZvcnNjaHVuZy4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1h
aWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
